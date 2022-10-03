if(-not $PSScriptRoot)
{
    $PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent
}

$PSVersion = $PSVersionTable.PSVersion.Major

Import-Module PSSQLite
Import-Module $PSScriptRoot\..\PSEdgeKeywords -Force

$DataSource = "$PSScriptRoot\TestWebData.SQLite"
$SQLCreateScript = "$PSScriptRoot\CreateKeywords.SQL"

If (Test-Path $DataSource) {
    Remove-Item -Path $DataSource -Force
    New-Item -ItemType File -Path $DataSource -Force
    Invoke-SqliteQuery -DataSource $DataSource -InputFile $SQLCreateScript
}

Describe "Output Keywords from Web Data Database" {

    Context 'Strict Mode' {

        Set-StrictMode -Version Latest

        It 'should retrieve PSCustomObject containing Edge Keywords' {
            $DataSource = "$PSScriptRoot\TestWebData.SQLite"
            $Keywords = Get-EdgeKeywordsData -Database $DataSource -As PSObject # Invoke-SQLiteQuery -DataSource $DataSource -Query "SELECT * FROM keywords" -As PSObject
            $Keywords | Should -BeOfType PSCustomObject
        }

        It 'should be the correct number of rows' {
            $DataSource = "$PSScriptRoot\TestWebData.SQLite"
            (Invoke-SqliteQuery -DataSource $DataSource -Query "SELECT COUNT(*) FROM keywords" -As SingleValue) -eq 4 | Should -Be $true
        }

    }

}


