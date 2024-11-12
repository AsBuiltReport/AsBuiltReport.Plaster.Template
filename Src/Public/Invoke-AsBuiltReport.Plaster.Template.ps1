function Invoke-<%= $PLASTER_PARAM_ModuleName %> {
    <#
    .SYNOPSIS
        PowerShell script to document the configuration of <%= $PLASTER_PARAM_VendorName %> <%= $PLASTER_PARAM_ProductName %> in Word/HTML/Text formats
    .DESCRIPTION
        Documents the configuration of <%= $PLASTER_PARAM_VendorName %> <%= $PLASTER_PARAM_ProductName %> in Word/HTML/Text formats using PScribo.
    .NOTES
        Version:        <%= $PLASTER_PARAM_Version %>
        Author:         <%= $PLASTER_PARAM_Author %>
        Twitter:
        Github:
        Credits:        Iain Brighton (@iainbrighton) - PScribo module

    .LINK
        https://github.com/AsBuiltReport/<%= $PLASTER_PARAM_ModuleName %>
    #>

	# Do not remove or add to these parameters
    param (
        [String[]] $Target,
        [PSCredential] $Credential
    )

    Write-PScriboMessage -Plugin "Module" -Message "Please refer to https://www.asbuiltreport.com for more detailed information about this project."
    Write-PScriboMessage -Plugin "Module" -Message "Do not forget to update your report configuration file after each new version release: https://www.asbuiltreport.com/user-guide/new-asbuiltreportconfig/"
    Write-PScriboMessage -Plugin "Module" -Message "Documentation: https://github.com/AsBuiltReport/AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %>"
    Write-PScriboMessage -Plugin "Module" -Message "Issues or bug reporting: https://github.com/AsBuiltReport/AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %>/issues"

    # Check the current AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %> module
    Try {
        $InstalledVersion = Get-Module -ListAvailable -Name AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %> -ErrorAction SilentlyContinue | Sort-Object -Property Version -Descending | Select-Object -First 1 -ExpandProperty Version

        if ($InstalledVersion) {
            Write-PScriboMessage -Plugin "Module" -Message "AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %> $($InstalledVersion.ToString()) is currently installed."
            $LatestVersion = Find-Module -Name AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %> -Repository PSGallery -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Version
            if ($LatestVersion -gt $InstalledVersion) {
                Write-PScriboMessage -Plugin "Module" -Message "AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %> $($LatestVersion.ToString()) is available."
                Write-PScriboMessage -Plugin "Module" -Message "Run 'Update-Module -Name AsBuiltReport.<%= $PLASTER_PARAM_VendorName %>.<%= $PLASTER_PARAM_ProductName %> -Force' to install the latest version."
            }
        }
    } Catch {
        Write-PscriboMessage -Plugin "Module" -IsWarning $_.Exception.Message
    }

    # Import Report Configuration
    $Report = $ReportConfig.Report
    $InfoLevel = $ReportConfig.InfoLevel
    $Options = $ReportConfig.Options

    # Used to set values to TitleCase where required
    $TextInfo = (Get-Culture).TextInfo

	# Update/rename the $System variable and build out your code within the ForEach loop. The ForEach loop enables AsBuiltReport to generate an as built configuration against multiple defined targets.

    #region foreach loop
    foreach ($System in $Target) {



	}
	#endregion foreach loop
}