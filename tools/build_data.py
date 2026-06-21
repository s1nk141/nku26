import json
import re
from pathlib import Path

import docx
from docx.table import Table
from docx.text.paragraph import Paragraph


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
OUT = ROOT / "review-data.js"

QUESTION_RE = re.compile(r"^\s*(\d+)[、.．]\s*(.+)", re.S)
CHAPTER_RE = re.compile(r"^第[一二三四五六七八九十百零〇\d]+章")


def iter_blocks(document):
    for child in document.element.body.iterchildren():
        if child.tag.endswith("}p"):
            para = Paragraph(child, document)
            text = para.text.strip()
            if text:
                yield ("paragraph", text)
        elif child.tag.endswith("}tbl"):
            table = Table(child, document)
            rows = []
            for row in table.rows:
                cells = [cell.text.strip().replace("\n", " / ") for cell in row.cells]
                cells = [cell for cell in cells if cell]
                if cells:
                    rows.append("：".join(cells) if len(cells) == 2 else " | ".join(cells))
            if rows:
                yield ("table", "\n".join(rows))


def clean_question(text):
    text = text.strip()
    text = re.sub(r"\s*\d+\s*$", "", text)
    return text.strip()


def finish_card(cards, card):
    if not card:
        return
    card["answer"] = "\n".join(part.strip() for part in card.pop("_answer_parts") if part.strip()).strip()
    if card["answer"]:
        cards.append(card)


def split_term_content(content):
    lines = [line.strip() for line in content.splitlines() if line.strip()]
    if not lines:
        return "", []
    if len(lines) > 1:
        return clean_question(lines[0]), lines[1:]

    line = lines[0]
    for marker in ("：", ":"):
        pos = line.find(marker)
        if 0 < pos <= 32:
            return clean_question(line[:pos]), [line[pos + 1:].strip()]
    return clean_question(line), []


def is_term_title(text):
    if not text or len(text) > 40:
        return False
    if any(mark in text for mark in "，。；：:"):
        return False
    if re.match(r"^[一二三四五六七八九十]+[、．.]", text):
        return False
    return True


def new_term_card(path, section, title, index, answer_parts=None):
    return {
        "id": f"term-{index:03d}",
        "type": "term",
        "title": title,
        "prompt": title,
        "answer": "",
        "_answer_parts": answer_parts or [],
        "section": section,
        "source": path.name,
        "tags": [tag for tag in [section, "名词"] if tag],
    }


def build_essay_cards(path, prefix):
    document = docx.Document(str(path))
    cards = []
    section = ""
    volume = ""
    current = None

    for kind, text in iter_blocks(document):
        if kind == "table":
            if current:
                current["_answer_parts"].append(text)
            continue

        if text in {"上册", "下册"}:
            volume = text
            continue
        if CHAPTER_RE.match(text):
            section = text
            continue

        match = QUESTION_RE.match(text)
        if match:
            finish_card(cards, current)
            raw_prompt = match.group(2)
            lines = [line.strip() for line in raw_prompt.splitlines() if line.strip()]
            prompt = clean_question(lines[0]) if lines else clean_question(raw_prompt)
            current = {
                "id": f"{prefix}-{len(cards) + 1:03d}",
                "type": "essay",
                "title": prompt,
                "prompt": prompt,
                "answer": "",
                "_answer_parts": lines[1:],
                "section": " · ".join(part for part in [volume, section] if part),
                "source": path.name,
                "tags": [tag for tag in [volume, section, "大题"] if tag],
            }
        elif current:
            current["_answer_parts"].append(text)

    finish_card(cards, current)
    return cards


def build_term_cards(path):
    document = docx.Document(str(path))
    cards = []
    section = ""
    current = None

    for kind, text in iter_blocks(document):
        if kind == "table":
            continue
        match = QUESTION_RE.match(text)
        if match:
            finish_card(cards, current)
            title, answer_parts = split_term_content(match.group(2).strip())
            current = new_term_card(path, section, title, len(cards) + 1, answer_parts)
            continue

        if CHAPTER_RE.match(text):
            finish_card(cards, current)
            current = None
            section = text
            continue

        if current:
            if current["_answer_parts"] and is_term_title(text):
                finish_card(cards, current)
                current = new_term_card(path, section, text, len(cards) + 1)
            else:
                current["_answer_parts"].append(text)
        elif is_term_title(text):
            current = new_term_card(path, section, text, len(cards) + 1)

    finish_card(cards, current)
    return cards


def main():
    cards = []
    cards.extend(build_essay_cards(SRC / "世界史上册课后题（已整理完毕）(1).docx", "essay-a"))
    cards.extend(build_essay_cards(SRC / "世界史下册课后题（完结撒花）.docx", "essay-b"))
    cards.extend(build_term_cards(SRC / "世界名词_.docx"))

    payload = {
        "title": "世界史期末复习",
        "generatedFrom": sorted(path.name for path in SRC.glob("*.docx")),
        "counts": {
            "total": len(cards),
            "term": sum(card["type"] == "term" for card in cards),
            "essay": sum(card["type"] == "essay" for card in cards),
        },
        "cards": cards,
    }
    OUT.write_text(
        "window.REVIEW_DATA = " + json.dumps(payload, ensure_ascii=False, indent=2) + ";\n",
        encoding="utf-8",
    )
    print(payload["counts"])


if __name__ == "__main__":
    main()
