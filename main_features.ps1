<#
.Synopsis
   Function Get-Features
.DESCRIPTION
   Function for get features in server
.EXAMPLE
   Get-Features -ComputerName $server
.EXAMPLE
   Get-Features -ComputerName $server  -Name $featureName
.INPUTS
   ComputerName
   Name
.OUTPUTS

.NOTES
   About Windows Features
   https://docs.microsoft.com/en-us/powershell/module/servermanager/
   install-windowsfeature?view=winserver2012r2-ps

.COMPONENT
   The component this cmdlet belongs to
.ROLE
   Powershell 3 or latest for execute this function
.FUNCTIONALITY
   Managment Windows Features with  Powershell
#>

Clear-Host
. $PSScriptRoot\features.utils.ps1

# Get Features
Get-Features -ComputerName silvestrini
