Function Get-EdgeWebDataPath {
    <#
    .SYNOPSIS
        Get the path to the Edge web data file.
    .DESCRIPTION
        Get the path to the Edge web data file.
    .PARAMETER EdgeEdition
        The edition of Edge to get the web data path for.
        The default is `Stable`.
        Can choose one of `Stable`, `Beta`, `Dev`, or `Canary`.
    .EXAMPLE
        Get-EdgeWebDataPath
        Get the path to the Edge web data file.
    #>

    [CmdletBinding()]
    Param (
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "The edition of Edge to get the web data path for."
        )]
        [ValidateSet('Stable', 'Beta', 'Dev', 'Canary')]
        [string]
        $EdgeEdition = 'Stable'
    )

    $webDataPath = Get-ConfigValue -Key "Edge$EdgeEdition.WebDataPath"
}
