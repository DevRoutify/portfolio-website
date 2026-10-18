Add-Type -AssemblyName System.Drawing
$bmp = New-Object System.Drawing.Bitmap 400,400
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.Clear([System.Drawing.Color]::FromArgb(238,242,255))
$brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(17,24,39))
$g.FillEllipse($brush, 100, 50, 200, 200)
$brush2 = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(248,250,252))
$g.FillEllipse($brush2, 155, 115, 90, 90)
$brush3 = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(79,70,229))
$g.FillRectangle($brush3, 120, 260, 160, 140)
$g.Dispose()
$path = Join-Path $PSScriptRoot 'images/profile.jpg'
$bmp.Save($path, [System.Drawing.Imaging.ImageFormat]::Jpeg)
$bmp.Dispose()
Write-Host "Created $path"
