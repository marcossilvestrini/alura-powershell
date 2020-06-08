<#
.Synopsis
   Function Get-SHA1
.DESCRIPTION
   Function for get filehash in format SHA1
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
Function Get-FileSHA1 {
   param(
      [Parameter(
         ValueFromPipeline = $true,
         ValueFromPipelineByPropertyName = "FullName",
         Mandatory = $true

      )]
      [String]$filePath
   )
   Begin {
      $sha1 = New-Object System.Security.Cryptography.SHA1Managed
      $prettyHashSB = New-Object System.Text.StringBuilder
   }
   Process {
      $fileContent = Get-Content $filePath
      $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)
      $hash = $sha1.ComputeHash($fileBytes)
      foreach ($byte in $hash) {
         $hexaNotation = $byte.ToString("X2")
         $prettyHashSB.Append($hexaNotation) > $null
      }
   }
   End {
      return $prettyHashSB.ToString()
      $prettyHashSB.Clear() > $null
      $sha1.Dispose()
   }
}

<#
.Synopsis
   Function Get-SHA256
.DESCRIPTION
   Function for get filehash in format SHA256
.EXAMPLE
   Get-SHA256 -filePath F:\install.msi
.EXAMPLE
   Get-SHA256 -filePath F:\install.msi
.INPUTS
   FilePath
.OUTPUTS
   FileHash
.NOTES
   About Hashs
   https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/
   about/about_hash_tables?view=powershell-7
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   Powershell 3 or latest for execute this function
.FUNCTIONALITY
   GET hash of files
#>
Function Get-FileSHA256($filePath) {

   Begin {
      $sha256 = New-Object System.Security.Cryptography.SHA256Managed
      $prettyHashSB = New-Object System.Text.StringBuilder
   }
   Process {
      $fileContent = Get-Content $filePath
      $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)
      $hash = $sha256.ComputeHash($fileBytes)
      foreach ($byte in $hash) {
         $hexaNotation = $byte.ToString("X2")
         $prettyHashSB.Append($hexaNotation) > $null
         $prettyHashSB.Clear()
      }
      End {
         return $prettyHashSB.ToString()
         $sha1.Dispose()
      }
   }
}

<#
.Synopsis
   Function Get-SHA384
.DESCRIPTION
   Function for get filehash in format SHA384
.EXAMPLE
   Get-SHA384 -filePath F:\install.msi
.EXAMPLE
   Get-SHA384 -filePath F:\install.msi
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
Function Get-FileSHA384() {

}

<#
.Synopsis
   Function Get-SHA512
.DESCRIPTION
   Function for get filehash in format SHA512
.EXAMPLE
   Get-SHA512 -filePath F:\install.msi
.EXAMPLE
   Get-SHA512 -filePath F:\install.msi
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
Function Get-FileSHA512() {

}