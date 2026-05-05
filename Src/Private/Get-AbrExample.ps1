function Get-Abr<%= $PLASTER_PARAM_VendorName %><%= $PLASTER_PARAM_ProductName %>Example {
    <#
    .SYNOPSIS
        Used by Invoke-<%= $PLASTER_PARAM_ModuleName %> to generate a report section.
    .DESCRIPTION
        Private function used to collect and report on <%= $PLASTER_PARAM_VendorName %> <%= $PLASTER_PARAM_ProductName %> example data.
        Rename this function to Get-Abr<%= $PLASTER_PARAM_VendorName %><%= $PLASTER_PARAM_ProductName %><Component> and
        update Invoke-<%= $PLASTER_PARAM_ModuleName %>.ps1 to call it from within the foreach loop.
    #>
    [CmdletBinding()]
    param (
        # Replace $Session with the appropriate connection/session object for your target system
        [Parameter(Mandatory)]
        $Session,

        [Parameter(Mandatory)]
        [int] $InfoLevel
    )

    try {
        # Load localized strings
        # $reportTranslate = Import-LocalizedData -BaseDirectory (Join-Path $PSScriptRoot '..\..\Language') `
        #     -FileName '<%= $PLASTER_PARAM_VendorName %><%= $PLASTER_PARAM_ProductName %>'

        # Replace the line below with real data collection against your target system
        # $Data = Get-<VendorAPICommand> -Session $Session

        # if ($InfoLevel -ge 1) {
        #     Section -Style Heading2 'Example Section' {
        #         # $Data | Table -Name 'Example' -List -ColumnWidths 50, 50
        #     }
        # }
    } catch {
        Write-PScriboMessage -IsWarning $_.Exception.Message
    }
}
