
$PSEdgeKeywordsConfigPath = "$env:USERPROFILE\\Documents\\PowerShell\\Modules\\PSEdgeKeywords\\*\\Configuration.psd1"

Function Get-PSEdgeConfig {
    <#
    .SYNOPSIS
        Retrieves the configuration for the PSEdgeKeywords module.
    .DESCRIPTION
        Retrieves the configuration for the PSEdgeKeywords module.
    .PARAMETER Path
        The path to the configuration file. Defaults to the configuration file in the PSEdgeKeywords module.
    #>

    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $Path = $PSEdgeKeywordsConfigPath
    )

    Import-Configuration -Path $Path
}
