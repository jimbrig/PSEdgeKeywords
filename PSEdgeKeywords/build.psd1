# Use this file to override the default parameter values used by the `Build-Module`
# command when building the module (see `Get-Help Build-Module -Full` for details).
@{
    ModuleManifest  = "PSEdgeKeywords.psd1"
    # Subsequent relative paths are to the ModuleManifest
    OutputDirectory = "../Output"
    VersionedOutputDirectory = $true
    CopyDirectories = @('SQL', 'en-US')
}
