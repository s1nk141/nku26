$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.Drawing

function New-TerminalImage {
    param(
        [string]$Path,
        [string[]]$Lines,
        [int]$Width,
        [int]$Height,
        [int]$FontSize = 15,
        [int]$X = 8,
        [int]$Y = 48
    )

    $bmp = New-Object System.Drawing.Bitmap $Width, $Height
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::ClearTypeGridFit

    $bg = [System.Drawing.Color]::FromArgb(12, 12, 12)
    $bar = [System.Drawing.Color]::FromArgb(42, 42, 42)
    $text = [System.Drawing.Color]::FromArgb(232, 232, 232)
    $green = [System.Drawing.Color]::FromArgb(145, 230, 155)
    $blue = [System.Drawing.Color]::FromArgb(98, 172, 255)

    $g.Clear($bg)
    $g.FillRectangle((New-Object System.Drawing.SolidBrush $bar), 0, 0, $Width, 40)
    $font = New-Object System.Drawing.Font "Consolas", $FontSize, ([System.Drawing.FontStyle]::Regular), ([System.Drawing.GraphicsUnit]::Pixel)
    $brush = New-Object System.Drawing.SolidBrush $text
    $greenBrush = New-Object System.Drawing.SolidBrush $green
    $blueBrush = New-Object System.Drawing.SolidBrush $blue

    $lineHeight = [int]($FontSize * 1.25)
    $cy = $Y
    foreach ($line in $Lines) {
        if ($line -like "*SUCCESS*") {
            $g.DrawString($line, $font, $greenBrush, $X, $cy)
        } elseif ($line.StartsWith("[s2410933")) {
            $g.DrawString($line, $font, $blueBrush, $X, $cy)
        } else {
            $g.DrawString($line, $font, $brush, $X, $cy)
        }
        $cy += $lineHeight
    }

    $bmp.Save($Path, [System.Drawing.Imaging.ImageFormat]::Png)
    $g.Dispose()
    $bmp.Dispose()
}

$local1 = @(
    "MOD=7340033, primitive_root=3",
    "n,threads,serial_us,pthread_us,openmp_us,pthread_speedup,openmp_speedup,pthread_ok,openmp_ok",
    "1024,1,384.300,343.000,309.800,1.120,1.240,yes,yes",
    "1024,2,384.300,5923.700,4363.300,0.065,0.088,yes,yes",
    "1024,4,384.300,8422.900,5386.100,0.046,0.071,yes,yes",
    "1024,8,384.300,12579.200,8506.800,0.031,0.045,yes,yes",
    "4096,1,1505.500,1502.100,1501.500,1.002,1.003,yes,yes",
    "4096,2,1505.500,3729.300,3065.200,0.404,0.491,yes,yes",
    "4096,4,1505.500,6763.900,4791.500,0.223,0.314,yes,yes",
    "4096,8,1505.500,13145.300,8865.600,0.115,0.170,yes,yes",
    "16384,1,7112.200,7169.800,7127.800,0.992,0.998,yes,yes",
    "16384,2,7112.200,6581.200,6669.800,1.081,1.066,yes,yes",
    "16384,4,7112.200,8523.600,6913.400,0.834,1.029,yes,yes",
    "16384,8,7112.200,15494.600,10985.600,0.459,0.647,yes,yes",
    "65536,1,33320.200,32861.600,33166.200,1.014,1.005,yes,yes",
    "65536,2,33320.200,22290.800,21454.800,1.495,1.553,yes,yes",
    "65536,4,33320.200,19922.200,17933.400,1.673,1.858,yes,yes",
    "65536,8,33320.200,33727.000,18868.000,0.988,1.766,yes,yes",
    "262144,1,152160.000,150314.667,150386.000,1.012,1.012,yes,yes",
    "262144,2,152160.000,85218.000,88223.667,1.786,1.725,yes,yes",
    "262144,4,152160.000,68857.000,64981.333,2.210,2.342,yes,yes"
)

$local2 = @(
    "MOD=7340033, primitive_root=3",
    "n,threads,serial_us,pthread_us,openmp_us,pthread_speedup,openmp_speedup,pthread_ok,openmp_ok",
    "1024,1,249.500,250.000,375.125,0.998,0.665,yes,yes",
    "1024,2,249.500,3000.125,374.625,0.083,0.666,yes,yes",
    "1024,4,249.500,6442.625,248.625,0.039,1.004,yes,yes",
    "1024,8,249.500,11940.625,374.375,0.021,0.666,yes,yes",
    "4096,1,1498.625,1499.625,1624.500,0.999,0.923,yes,yes",
    "4096,2,1498.625,3689.250,1499.375,0.406,0.999,yes,yes",
    "4096,4,1498.625,6375.875,1562.875,0.235,0.959,yes,yes",
    "4096,8,1498.625,11567.875,1499.125,0.130,1.000,yes,yes",
    "16384,1,7249.500,7128.750,6999.500,1.017,1.036,yes,yes",
    "16384,2,7249.500,6750.250,7128.000,1.074,1.017,yes,yes",
    "16384,4,7249.500,7499.750,7250.000,0.967,1.000,yes,yes",
    "16384,8,7249.500,13087.250,6989.250,0.554,1.037,yes,yes",
    "65536,1,33253.250,33378.000,33380.250,0.996,0.996,yes,yes",
    "65536,2,33253.250,21325.500,33215.500,1.559,1.001,yes,yes",
    "65536,4,33253.250,18412.500,33255.500,1.806,1.000,yes,yes",
    "65536,8,33253.250,29012.000,33377.500,1.146,0.996,yes,yes",
    "262144,1,150281.500,150274.000,150000.000,1.000,1.002,yes,yes",
    "262144,2,150281.500,81965.000,148498.500,1.833,1.012,yes,yes",
    "262144,4,150281.500,62001.500,148761.000,2.424,1.010,yes,yes"
)

$ssh = @(
    "[s2410933@master_ubss1 ntt]$ sh test.sh 2 2",
    "Submitted job with ID: 28773.master_ubss1",
    ";;[1] 17:34:58 [SUCCESS] node1_ubss1",
    "[2] 17:35:00 [SUCCESS] master_ubss7",
    "",
    "Authorized users only. All activities may be monitored and reported.",
    "",
    "Authorized users only. All activities may be monitored and reported.",
    "[1] 17:35:01 [SUCCESS] node1_ubss1",
    "[2] 17:35:02 [SUCCESS] master_ubss7",
    "poly result correct",
    "average latency for n = 4 p = 7340033 : 0.944367 (ms)",
    "poly result correct",
    "average latency for n = 131072 p = 7340033 : 32.3997 (ms)",
    "",
    "Authorized users only. All activities may be monitored and reported."
)

New-TerminalImage -Path "local_result_1.png" -Lines $local1 -Width 1114 -Height 626 -FontSize 15
New-TerminalImage -Path "local_result_2.png" -Lines $local2 -Width 1114 -Height 626 -FontSize 15
New-TerminalImage -Path "ssh_result_lab3.png" -Lines $ssh -Width 725 -Height 501 -FontSize 14 -X 20 -Y 16
