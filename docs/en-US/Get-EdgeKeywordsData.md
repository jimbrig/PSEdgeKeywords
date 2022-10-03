---
external help file: PSEdgeKeywords-help.xml
Module Name: PSEdgeKeywords
online version: https://github.com/jimbrig/PSEdgeKeywords/PSEdgeKeywords/Public/Get-EdgeKeywordsData.ps1
schema: 2.0.0
---

# Get-EdgeKeywordsData

## SYNOPSIS
Retrieves the keywords from the Microsoft Edge Web Data SQLite database.

## SYNTAX

```powershell
Get-EdgeKeywordsData [-Database] <String> [[-As] <String>] [<CommonParameters>]
```

## DESCRIPTION
Retrieves the keywords from the Microsoft Edge Web Data SQLite database.

## EXAMPLES

### Get Web Data from Stable Edge Browser

```powershell
Get-EdgeKeywordsData -Database "$Env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Web Data"
```

Returns the keywords from the Microsoft Edge Web Data `SQLite` database.

## PARAMETERS

### -Database

The path to the Microsoft Edge Web Data SQLite database.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Path, DatabasePath, WebDataPath, WebDataDatabasePath, DataSource

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -As

The type of object to return.
The default is `PSCustomObject`.
Can choose one of `DataSet`, `DataTable`, `DataRow`, `PSObject`, or `SingleValue`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: PSObject
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`,
`-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`,
and `-WarningVariable`.

For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

The keywords from the Microsoft Edge Web Data SQLite database.

- PSObject: `System.Management.Automation.PSCustomObject`
- DataSet: `System.Data.DataSet`
- DataTable: `System.Data.DataTable`
- DataRow: `System.Data.DataRow`
- SingleValue: Depends on the data type of the column selected

## NOTES

Microsoft Edge stores the keywords in the *Web Data* `SQLite` database in the table named *keywords*.

*Web Data* Paths:

- **Microsoft Edge Stable**: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Web Data`.
- **Microsoft Edge Beta**: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge Beta\User Data\Default\Web Data`.
- **Microsoft Edge Dev**: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge Dev\User Data\Default\Web Data`.
- **Microsoft Edge Canary**: the database is located at `$Env:LOCALAPPDATA\Microsoft\Edge SxS\User Data\Default\Web Data`.

The **Web Data** database is a `SQLite` database.

The **keywords** table has the following schema:

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

The `url` column contains the URL of the search engine.

The `keyword` column contains the keyword to use to trigger the search.

## RELATED LINKS

- [Get-EdgeKeywordsData.ps1](https://github.com/jimbrig/PSEdgeKeywords/PSEdgeKeywords/Public/Get-EdgeKeywordsData.ps1)

- [https://www.sqlite.org/lang.html](https://www.sqlite.org/lang.html)

