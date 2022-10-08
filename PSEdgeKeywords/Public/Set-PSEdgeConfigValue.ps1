Function Set-PSEdgeConfigValue {

    <#
    .SYNOPSIS
        Set a key-value config in the module's configuration file.
    .DESCRIPTION
        Set a key-value config in the module's configuration file.
    .PARAMETER Key
        The key of the config to set.
    .PARAMETER Value
        The value of the config to set.
    .EXAMPLE
        Set-PSEdgeConfigValue -Key 'EdgeStable.WebDataPath' -Value 'C:\Users\username\AppData\Local\Microsoft\Edge\User Data'

        # Set the path to the Edge web data file.
    #>

    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    Param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = "The key of the config to set."
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $Key,

        [Parameter(
            Mandatory = $true,
            Position = 1,
            HelpMessage = "The value of the config to set."
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $Value
    )

    Begin {
        if (-not $PSBoundParameters.ContainsKey('Confirm')) {
            $ConfirmPreference = $PSCmdlet.SessionState.PSVariable.GetValue('ConfirmPreference')
        }
        if (-not $PSBoundParameters.ContainsKey('WhatIf')) {
            $WhatIfPreference = $PSCmdlet.SessionState.PSVariable.GetValue('WhatIfPreference')
        }
    }

    Process {
        if ($PSCmdlet.ShouldProcess("ShouldProcess?")) {
            $script:Config = Import-Configuration
            $config.$Key = $Value
            Export-Configuration -Config $config
        }
    }

    End {}
}

