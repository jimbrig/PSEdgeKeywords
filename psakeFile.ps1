properties {
    # Set this to $true to create a module with a monolithic PSM1
    $PSBPreference.Build.CompileModule = $false
    $PSBPreference.Help.DefaultLocale = 'en-US'
    $PSBPreference.Test.OutputFile = 'out/testResults.xml'

    if ($PSGalleryApiKey) {
        $PSBPreference.Publish.PSRepositoryApiKey = $galleryApiKey.GetNetworkCredential().password
    }
}

task Default -depends Test

task Test -FromModule PowerShellBuild -minimumVersion '0.6.1'
