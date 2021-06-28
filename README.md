## Install Plaster

```powershell
Install-Module -Name Plaster
```

## Clone AsBuiltReport Plaster template repository
Download the AsBuiltReport Plaster template to a local folder (e.g. C:\Development)
```powershell
md c:\development
cd c:\development
git clone https://github.com/AsBuiltReport/AsBuiltReport.Plaster.Template
```

## Create new module folder structure from Plaster template

```powershell
Invoke-Plaster -TemplatePath "C:\Development\AsBuiltReport.Plaster.Template" -DestinationPath "C:\Development"
```

```
  ____  _           _
 |  _ \| | __ _ ___| |_ ___ _ __
 | |_) | |/ _` / __| __/ _ \ '__|
 |  __/| | (_| \__ \ ||  __/ |
 |_|   |_|\__,_|___/\__\___|_|
                                            v1.1.3
==================================================
Enter the vendor name: ACME
Enter the product name: Widget
Confirm the module name AsBuiltReport.ACME.Widget (AsBuiltReport.ACME.Widget):
Brief description of module (A PowerShell module to generate an as built report on the configuration of ACME Widget.):
Enter the version number of the module (0.1.0):
Module author's name (Tim Carman):
Minimum PowerShell version (5.1):
Destination path: C:\Users\tcarman\temp\
    Creating folder structure
   Create AsBuiltReport.ACME.Widget\
   Create AsBuiltReport.ACME.Widget\Samples\
   Create AsBuiltReport.ACME.Widget\Src\
   Create AsBuiltReport.ACME.Widget\Src\Public\
   Create AsBuiltReport.ACME.Widget\Src\Private\
   Create AsBuiltReport.ACME.Widget\.vscode\
   Create AsBuiltReport.ACME.Widget\.github\
   Create AsBuiltReport.ACME.Widget\.github\ISSUE_TEMPLATE\
   Create AsBuiltReport.ACME.Widget\.github\workflows\
    Deploying common files
   Create AsBuiltReport.ACME.Widget\LICENSE
   Create AsBuiltReport.ACME.Widget\AsBuiltReport.ACME.Widget.psm1
   Create AsBuiltReport.ACME.Widget\.vscode\settings.json
   Create AsBuiltReport.ACME.Widget\.github\PULL_REQUEST_TEMPLATE.md
   Create AsBuiltReport.ACME.Widget\.github\ISSUE_TEMPLATE\bug_report.md
   Create AsBuiltReport.ACME.Widget\.github\ISSUE_TEMPLATE\feature_request.md
   Create AsBuiltReport.ACME.Widget\.github\workflows\PSScriptAnalyzer.yml
   Create AsBuiltReport.ACME.Widget\.github\workflows\PSScriptAnalyzerSettings.psd1
   Create AsBuiltReport.ACME.Widget\README.md
   Create AsBuiltReport.ACME.Widget\CHANGELOG.md
   Create AsBuiltReport.ACME.Widget\AsBuiltReport.ACME.Widget.json
   Create AsBuiltReport.ACME.Widget\AsBuiltReport.ACME.Widget.Style.ps1
   Create AsBuiltReport.ACME.Widget\Src\Public\Invoke-AsBuiltReport.ACME.Widget.ps1
    Creating Module Manifest
   Create AsBuiltReport.ACME.Widget\AsBuiltReport.ACME.Widget.psd1
```