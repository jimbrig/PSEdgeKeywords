---
external help file: PSEdgeKeywords-help.xml
Module Name: PSEdgeKeywords
online version:
schema: 2.0.0
---

# Set-PSEdgeConfigValue

## SYNOPSIS
Set a key-value config in the module's configuration file.

## SYNTAX

```
Set-PSEdgeConfigValue [-Key] <String> [-Value] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Set a key-value config in the module's configuration file.

## EXAMPLES

### EXAMPLE 1
```
Set-PSEdgeConfigValue -Key 'EdgeStable.WebDataPath' -Value 'C:\Users\username\AppData\Local\Microsoft\Edge\User Data'
```

# Set the path to the Edge web data file.

## PARAMETERS

### -Key
The key of the config to set.

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

### -Value
The value of the config to set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
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
