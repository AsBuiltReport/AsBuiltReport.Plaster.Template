# AsBuiltReport Plaster Template

A [Plaster](https://github.com/PowerShellOrg/Plaster) template that scaffolds the complete folder structure and starter files for a new [AsBuiltReport](https://github.com/AsBuiltReport/AsBuiltReport) module.

## Prerequisites

- PowerShell 5.1 or PowerShell 7+
- [Plaster](https://www.powershellgallery.com/packages/Plaster) module

```powershell
Install-Module -Name Plaster -Scope CurrentUser
```

## Getting Started

### 1. Clone the template

```powershell
git clone https://github.com/AsBuiltReport/AsBuiltReport.Plaster.Template C:\AsBuiltReport.Plaster.Template
```

### 2. Scaffold a new module

```powershell
Invoke-Plaster -TemplatePath 'C:\AsBuiltReport.Plaster.Template' -DestinationPath 'C:\Development'
```

Plaster will prompt for the following:

| Parameter | Description | Default |
|-----------|-------------|---------|
| `VendorName` | Vendor or technology name (e.g. `VMware`) | — |
| `ProductName` | Product name (e.g. `vSphere`) | — |
| `ModuleName` | Full module name | `AsBuiltReport.<VendorName>.<ProductName>` |
| `Description` | Brief module description | Auto-generated |
| `Version` | Initial module version | `0.1.0` |
| `Author` | Module author name | Git config value |
| `CompanyName` | Company or organization name (press Enter to skip) | `Unknown` |
| `PowerShellVersion` | Supported PowerShell edition(s) | `Windows PowerShell 5.1 only` |

**PowerShell edition choices:**

| Choice | `PowerShellVersion` | `CompatiblePSEditions` |
|--------|---------------------|------------------------|
| Windows PowerShell 5.1 only | `5.1` | `@('Desktop')` |
| PowerShell 7+ only | `7.0` | `@('Core')` |
| Windows PowerShell 5.1 and PowerShell 7+ | `5.1` | `@('Desktop', 'Core')` |

### Example

```
  ____  _           _
 |  _ \| | __ _ ___| |_ ___ _ __
 | |_) | |/ _` / __| __/ _ \ '__|
 |  __/| | (_| \__ \ ||  __/ |
 |_|   |_|\__,_|___/\__\___|_|
                                            v1.1.3
==================================================
Enter the vendor name: Acme
Enter the product name: Widget
Confirm the module name AsBuiltReport.Acme.Widget (AsBuiltReport.Acme.Widget):
Brief description of module (A PowerShell module to generate an as built report on the configuration of Acme Widget.):
Enter the version number of the module (0.1.0):
Module author's name (Tim Carman):
Enter your company or organization name (optional):
Select the supported PowerShell edition(s):
  [W] Windows PowerShell 5.1 only
  [P] PowerShell 7+ only
  [B] Windows PowerShell 5.1 and PowerShell 7+
  [?] Help (default is "W"): B
Destination path: C:\Development

    Creating folder structure
   Create AsBuiltReport.Acme.Widget\
   Create AsBuiltReport.Acme.Widget\Samples\
   Create AsBuiltReport.Acme.Widget\Tests\
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\Src\
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\Src\Public\
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\Src\Private\
   Create AsBuiltReport.Acme.Widget\.vscode\
   Create AsBuiltReport.Acme.Widget\.github\
   Create AsBuiltReport.Acme.Widget\.github\ISSUE_TEMPLATE\
   Create AsBuiltReport.Acme.Widget\.github\workflows\
    Deploying common files
   Create AsBuiltReport.Acme.Widget\LICENSE
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.png
   Create AsBuiltReport.Acme.Widget\.gitignore
   Create AsBuiltReport.Acme.Widget\README.md
   Create AsBuiltReport.Acme.Widget\CHANGELOG.md
   Create AsBuiltReport.Acme.Widget\.vscode\settings.json
   Create AsBuiltReport.Acme.Widget\.github\PULL_REQUEST_TEMPLATE.md
   Create AsBuiltReport.Acme.Widget\.github\ISSUE_TEMPLATE\bug_report.yml
   Create AsBuiltReport.Acme.Widget\.github\ISSUE_TEMPLATE\change_request.yml
   Create AsBuiltReport.Acme.Widget\.github\ISSUE_TEMPLATE\config.yml
   Create AsBuiltReport.Acme.Widget\.github\workflows\PSScriptAnalyzer.yml
   Create AsBuiltReport.Acme.Widget\.github\workflows\Release.yml
   Create AsBuiltReport.Acme.Widget\.github\workflows\Pester.yml
   Create AsBuiltReport.Acme.Widget\Tests\Invoke-Tests.ps1
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget.psm1
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget.json
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\Src\Public\Invoke-AsBuiltReport.Acme.Widget.ps1
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\Language\en-US\AcmeWidget.psd1
    Deploying module manifest and starter files
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget.psd1
   Create AsBuiltReport.Acme.Widget\AsBuiltReport.Acme.Widget\Src\Private\Get-AbrAcmeWidgetExample.ps1
   Create AsBuiltReport.Acme.Widget\Tests\AsBuiltReport.Acme.Widget.Tests.ps1
```

## Scaffolded Structure

```
AsBuiltReport.Acme.Widget\
├── .github\
│   ├── ISSUE_TEMPLATE\
│   │   ├── bug_report.yml
│   │   ├── change_request.yml
│   │   └── config.yml
│   ├── workflows\
│   │   ├── Pester.yml
│   │   ├── PSScriptAnalyzer.yml
│   │   ├── PSScriptAnalyzerSettings.psd1
│   │   ├── Release.yml
│   │   └── Stale.yml
│   ├── Dependabot.yml
│   ├── FUNDING.yml
│   └── PULL_REQUEST_TEMPLATE.md
├── .vscode\
│   └── settings.json
├── AsBuiltReport.Acme.Widget\          ← module folder
│   ├── Language\
│   │   └── en-US\
│   │       └── AcmeWidget.psd1         ← localised string stubs
│   ├── Src\
│   │   ├── Private\
│   │   │   └── Get-AbrAcmeWidgetExample.ps1  ← starter private function
│   │   └── Public\
│   │       └── Invoke-AsBuiltReport.Acme.Widget.ps1
│   ├── AsBuiltReport.Acme.Widget.json
│   ├── AsBuiltReport.Acme.Widget.psd1  ← pre-populated module manifest
│   └── AsBuiltReport.Acme.Widget.psm1
├── Samples\
├── Tests\
│   ├── AsBuiltReport.Acme.Widget.Tests.ps1  ← starter Pester 5 tests
│   └── Invoke-Tests.ps1
├── AsBuiltReport.png
├── CHANGELOG.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── LICENSE
├── README.md
└── SECURITY.md
```

## Next Steps

After running `Invoke-Plaster`:

1. **Add your data collection logic** — rename and populate `Get-AbrAcmeWidgetExample.ps1` in `Src\Private\`
2. **Update the Invoke function** — wire up your private functions inside the `foreach ($System in $Target)` loop in `Src\Public\Invoke-AsBuiltReport.Acme.Widget.ps1`
3. **Expand the report config** — add your sections to `AsBuiltReport.Acme.Widget.json` under `InfoLevel` and `HealthCheck`
4. **Update the language file** — add string entries to `Language\en-US\AcmeWidget.psd1`
5. **Update the README** — replace placeholder content in `README.md`
6. **Initialise a git repository** — `git init`, add a remote, and push

Refer to existing AsBuiltReport modules such as [AsBuiltReport.VMware.vSphere](https://github.com/AsBuiltReport/AsBuiltReport.VMware.vSphere) or [AsBuiltReport.Microsoft.AD](https://github.com/AsBuiltReport/AsBuiltReport.Microsoft.AD) for implementation examples.
