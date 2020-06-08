<#
.Synopsis
   Main function
.DESCRIPTION
   Main function about hash tables
.EXAMPLE
   Get-SHA1 -filePath F:\install.msi
.EXAMPLE
   Get-SHA256 -filePath F:\install.msi
.INPUTS
   FilePath
.OUTPUTS
   FileHash
.NOTES
   About Hash Tables:
   https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/
   about/about_hash_tables?view=powershell-7
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   Powershell 3 or latest for execute this function
.FUNCTIONALITY
   GET hash of files
#>
Clear-Host
. $PSScriptRoot\ShaFile.ps1

# SHA1
# $hash = Get-FileSHA1 -filePath "F:\APPS\Drivers\EpicInstaller-7.16.0.msi"
# Write-Host "SHA1: $hash" -BackgroundColor Red -ForegroundColor Yellow

. $PSScriptRoot\CalcDirHash.ps1 -directory "F:\TOTVS\DOCS\"

# SHA256
# $hash = Get-FileSHA256 -filePath "F:\APPS\Drivers\EpicInstaller-7.16.0.msi"
# Write-Host "SHA256: $hash" -BackgroundColor Red -ForegroundColor Yellow