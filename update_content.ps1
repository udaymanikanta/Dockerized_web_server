$folderPath = ".\content"
$files = Get-ChildItem -Path $folderPath -Filter *.html

foreach ($file in $files) {
    $filePath = $file.FullName
    $backupPath = "$filePath.bak"

    # Backup original
    Copy-Item $filePath $backupPath -Force
    Write-Host "✅ Backup created for: $file.Name"

    # Insert updated content with filename and timestamp
    $now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $pageTitle = $file.BaseName

    @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset='UTF-8' />
  <title>Updated: $pageTitle</title>
</head>
<body>
  <h1>🚀 This is $pageTitle.html</h1>
  <p>Updated via PowerShell script at <strong>$now</strong></p>
</body>
</html>
"@ | Set-Content -Path $filePath

    Write-Host "✅ Updated: $file.Name" -ForegroundColor Green
}
