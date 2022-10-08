Function Test-SQLiteInstalled {

    <#
    .SYNOPSIS
        Test if the PSSQLite module is installed.
    .DESCRIPTION
        Test if the PSSQLite module is installed.
    #>

    [CmdletBinding()]
    [OutputType([bool])]
    param ()

    # Test if the PSSQLite module is installed.
    $PSSQLiteModule = Get-Module -Name PSSQLite -ListAvailable

    # If the PSSQLite module is not installed, then throw an error.
    if (-not $PSSQLiteModule) {
        Write-Error "The PSSQLite module is not installed. Install the PSSQLite module by running `Install-Module -Name PSSQLite`."
        return $true
    }

    $true

}
