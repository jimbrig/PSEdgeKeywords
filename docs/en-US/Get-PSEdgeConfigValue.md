---
external help file: PSEdgeKeywords-help.xml
Module Name: PSEdgeKeywords
online version:
schema: 2.0.0
---

# Get-PSEdgeConfigValue

## SYNOPSIS
Retrieve a key-value config from the module's configuration file.

## SYNTAX

```
Get-PSEdgeConfigValue [-Key] <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieve a key-value config from the module's configuration file.

## EXAMPLES

### EXAMPLE 1
```
Get-PSEdgeConfigValue -Key 'EdgeStable.WebDataPath'
```

# Get the path to the Edge web data file.

## PARAMETERS

### -Key
The key of the config to retrieve.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
