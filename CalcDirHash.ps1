param($directory)

. $PSScriptRoot\ShaFile.ps1

$ErrorActionPreference = "Stop"

# Method 1

# $files = Get-ChildItem $directory -File
# foreach ($file in $files.FullName) {
#     $hashItem = Get-FileSHA1 -filePath $file
#     Write-Host "[File: $file]" -BackgroundColor Red -ForegroundColor White
#     Write-Host "[File: $hashItem]" -BackgroundColor Red -ForegroundColor White
#     " "
# }

# Method 2

Get-ChildItem $directory -File | ForEach-Object {
    $hashItem = Get-FileSHA1 -filePath $_.FullName
    Write-Host "[File: $($_.FullName)]" -BackgroundColor Red -ForegroundColor White
    Write-Host "[File: $hashItem]" -BackgroundColor Red -ForegroundColor White
    " "
}