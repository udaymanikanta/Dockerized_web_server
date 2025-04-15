$folderPath = ".\content"
$backups = Get-ChildItem -Path $folderPath -Filter *.bak

foreach ($bak in $backups) {
    $original = $bak.FullName -replace "\.bak$", ""
    Copy-Item $bak.FullName $original -Force
    Write-Host "🔄 Restored: $original"
}
