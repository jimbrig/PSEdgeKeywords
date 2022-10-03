<#

.SYNOPSIS
    Retrieves the keywords from the Microsoft Edge Web Data SQLite database.

.DESCRIPTION
    Retrieves the keywords from the Microsoft Edge Web Data SQLite database.

.PARAMETER Database
    The path to the Microsoft Edge Web Data SQLite database.

.PARAMETER As
    The type of object to return. The default is `PSCustomObject`.
    Can choose one of `DataSet`, `DataTable`, `DataRow`, `PSObject`, or `SingleValue`.

.OUTPUTS
    The keywords from the Microsoft Edge Web Data SQLite database.

    As PSObject: System.Management.Automation.PSCustomObject
    As DataSet: System.Data.DataSet
    As DataTable: System.Data.DataTable
    As DataRow: System.Data.DataRow
    As SingleValue: Depends on the data type of the column selected

.EXAMPLE
    Get-EdgeKeywordsData -Database "$Env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Web Data"

    # Returns the keywords from the Microsoft Edge Web Data SQLite database.

.LINK
    https://github.com/jimbrig/PSEdgeKeywords/PSEdgeKeywords/Public/Get-EdgeKeywordsData.ps1

.LINK
    Get-EdgeKeywordsData

.LINK
    https://www.sqlite.org/lang.html

.FUNCTIONALITY
    SQLite

.NOTES
    Microsoft Edge stores the keywords in the Web Data SQLite database in the table named `keywords`.

    Web Data Paths:
    - Microsoft Edge Stable: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Web Data`.
    - Microsoft Edge Beta: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge Beta\User Data\Default\Web Data`.
    - Microsoft Edge Dev: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge Dev\User Data\Default\Web Data`.
    - Microsoft Edge Canary: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge SxS\User Data\Default\Web Data`.

    The "Web Data" database is a SQLite database. The "keywords" table has the following schema:

    ```sql
    CREATE TABLE keywords (
        id INTEGER PRIMARY KEY,
        short_name VARCHAR NOT NULL,
        keyword VARCHAR NOT NULL,
        favicon_url VARCHAR NOT NULL,
        url VARCHAR NOT NULL,
        safe_for_autoreplace INTEGER,
        originating_url VARCHAR,
        date_created INTEGER DEFAULT 0,
        usage_count INTEGER DEFAULT 0,
        input_encodings VARCHAR,
        suggest_url VARCHAR,
        prepopulate_id INTEGER DEFAULT 0,
        created_by_policy INTEGER DEFAULT 0,
        last_modified INTEGER DEFAULT 0,
        sync_guid VARCHAR,
        alternate_urls VARCHAR,
        image_url VARCHAR,
        search_url_post_params VARCHAR,
        suggest_url_post_params VARCHAR,
        image_url_post_params VARCHAR,
        new_tab_url VARCHAR,
        last_visited INTEGER DEFAULT 0,
        created_from_play_api INTEGER DEFAULT 0,
        is_active INTEGER DEFAULT 0,
        starter_pack_id INTEGER DEFAULT 0
    );
    ```

    The `url` column contains the URL of the search engine. The `keyword` column contains the keyword to use to trigger the search.

#>

Function Get-EdgeKeywordsData {

    [CmdletBinding()]
    #[OutputType([System.Management.Automation.PSCustomObject],[System.Data.DataRow],[System.Data.DataTable],[System.Data.DataTableCollection],[System.Data.DataSet])]

    Param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = "The path to the Microsoft Edge Web Data SQLite database."
        )]
        [Alias("Path", "DatabasePath", "WebDataPath", "WebDataDatabasePath", "DataSource")]
        [ValidateScript({Test-Path $_})]
        [string]
        $Database,

        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = "The type of object to return. The default is `PSObject`."
        )]
        [ValidateSet("DataSet", "DataTable", "DataRow", "PSObject", "SingleValue")]
        [string]
        $As = "PSObject"
    )

    Begin {
        # Import the PSSQLite module.
        Import-Module -Name PSSQLite

        # Define the SQL query.
        $Query = "SELECT * FROM keywords"
    }

    Process {
        # Execute the SQL query.
        $Result = Invoke-SqliteQuery -DataSource $Database -Query $Query -As $As

        # Return the result.
        $Result
    }

    End {}

}
