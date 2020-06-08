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
Function Get-Features {
    param(
        [Parameter(
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = "ComputerName",
            Mandatory = $true

        )]
        [String]$ComputerName,
        [Parameter(
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = "Name",
            Mandatory = $false

        )]
        [String]$Name
    )
    Begin {
        $features = $null

    }
    Process {
        if ($null -ne $Name) {
            $features = Get-WindowsFeature -ComputerName $ComputerName -Name $Name
        }
        $features = Get-WindowsFeature -ComputerName $ComputerName
    }
    End {
        return $features
    }
}

<#
.Synopsis
   Function Install-Features
.DESCRIPTION
   Function for install features in server
.EXAMPLE
   Install-Features -ComputerName $server
.EXAMPLE
   Install-Features -ComputerName $server  -Name $featureName
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
Function Install-Features {
    param(
        [String]$ComputerName,
        [String]$Name
    )
    Begin {


    }
    Process {

    }
    End {

    }
}