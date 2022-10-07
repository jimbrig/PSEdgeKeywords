Function Get-PSEdgeConfigValue {
    <#
    .SYNOPSIS
        Retrieve a key-value config from the module's configuration file.
    .DESCRIPTION
        Retrieve a key-value config from the module's configuration file.
    .PARAMETER Key
        The key of the config to retrieve.
    .EXAMPLE
        Get-PSEdgeConfigValue -Key 'EdgeStable.WebDataPath'

        # Get the path to the Edge web data file.
    #>

    [CmdletBinding()]
    Param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = "The key of the config to retrieve."
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $Key
    )

    $script:Config = Import-Configuration
    $config.$Key

}
