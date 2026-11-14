<p align="center">
    <a href="https://www.asbuiltreport.com/">
        <img src="https://raw.githubusercontent.com/AsBuiltReport/.github/main/assets/repo-banners/AsBuiltReport.Plaster.Template.png" alt="AsBuiltReport.Plaster.Template" width="880"></a>
</p>

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
| `CompanyName` | Company or organization name (press Enter to use `Unknown`) | `Unknown` |
| `PowerShellVersion` | Supported PowerShell edition(s) | `PowerShell 7+ only` |

**PowerShell edition choices:**

| Choice | `PowerShellVersion` | `CompatiblePSEditions` |
|--------|---------------------|------------------------|
| Windows PowerShell 5.1 only | `5.1` | `@('Desktop')` |
| PowerShell 7+ only | `7.0` | `@('Core')` |
| Windows PowerShell 5.1 and PowerShell 7+ | `5.1` | `@('Desktop', 'Core')` |

### Example

```
  ____  _           _                ____     ___
 |  _ \| | __ _ ___| |_ ___ _ __    |___ \   / _ \
 | |_) | |/ _` / __| __/ _ \ '__|     __) | | | | |
 |  __/| | (_| \__ \ ||  __/ |       / __/|_| |_| |
 |_|   |_|\__,_|___/\__\___|_|      |_____|_|\___/
                            v2.0.0 (JSON Enhanced)
==================================================
Enter the vendor name: Vendor
Enter the product name: Product
Confirm the module name AsBuiltReport.Vendor.Product (AsBuiltReport.Vendor.Product):
Brief description of module (A PowerShell module to generate an as built report on the configuration of Vendor Product.):
Enter the version number of the module (0.1.0):
Module author's name (Tim Carman):
Enter your company or organization name (leave blank for Unknown) (Unknown):
Select the supported PowerShell edition(s):
  [W] Windows PowerShell 5.1 only
  [P] PowerShell 7+ only
  [A] Windows PowerShell 5.1 and PowerShell 7+
  [?] Help (default is "P"): A
Destination path: C:\Development

    Creating folder structure
   Create AsBuiltReport.Vendor.Product\
   Create AsBuiltReport.Vendor.Product\Samples\
   Create AsBuiltReport.Vendor.Product\Tests\
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\Src\
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\Src\Public\
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\Src\Private\
   Create AsBuiltReport.Vendor.Product\.vscode\
   Create AsBuiltReport.Vendor.Product\.github\
   Create AsBuiltReport.Vendor.Product\.github\ISSUE_TEMPLATE\
   Create AsBuiltReport.Vendor.Product\.github\workflows\
    Deploying common files
   Create AsBuiltReport.Vendor.Product\LICENSE
   Create AsBuiltReport.Vendor.Product\.gitignore
   Create AsBuiltReport.Vendor.Product\README.md
   Create AsBuiltReport.Vendor.Product\CHANGELOG.md
   Create AsBuiltReport.Vendor.Product\.vscode\settings.json
   Create AsBuiltReport.Vendor.Product\.github\PULL_REQUEST_TEMPLATE.md
   Create AsBuiltReport.Vendor.Product\.github\ISSUE_TEMPLATE\bug_report.yml
   Create AsBuiltReport.Vendor.Product\.github\ISSUE_TEMPLATE\change_request.yml
   Create AsBuiltReport.Vendor.Product\.github\ISSUE_TEMPLATE\config.yml
   Create AsBuiltReport.Vendor.Product\.github\workflows\PSScriptAnalyzer.yml
   Create AsBuiltReport.Vendor.Product\.github\workflows\Release.yml
   Create AsBuiltReport.Vendor.Product\.github\workflows\Pester.yml
   Create AsBuiltReport.Vendor.Product\Tests\Invoke-Tests.ps1
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product.psm1
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product.json
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\Src\Public\Invoke-AsBuiltReport.Vendor.Product.ps1
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\Language\en-US\VendorProduct.psd1
    Deploying module manifest and starter files
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product.psd1
   Create AsBuiltReport.Vendor.Product\AsBuiltReport.Vendor.Product\Src\Private\Get-AbrVendorProductExample.ps1
   Create AsBuiltReport.Vendor.Product\Tests\AsBuiltReport.Vendor.Product.Tests.ps1
```

## Scaffolded Structure

```
AsBuiltReport.Vendor.Product\
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
├── AsBuiltReport.Vendor.Product\          ← module folder
│   ├── Language\
│   │   └── en-US\
│   │       └── VendorProduct.psd1         ← localized string stubs
│   ├── Src\
│   │   ├── Private\
│   │   │   └── Get-AbrVendorProductExample.ps1  ← starter private function
│   │   └── Public\
│   │       └── Invoke-AsBuiltReport.Vendor.Product.ps1
│   ├── AsBuiltReport.Vendor.Product.json
│   ├── AsBuiltReport.Vendor.Product.psd1  ← pre-populated module manifest
│   └── AsBuiltReport.Vendor.Product.psm1
├── Samples\
├── Tests\
│   ├── AsBuiltReport.Vendor.Product.Tests.ps1  ← starter Pester 5 tests
│   └── Invoke-Tests.ps1
├── CHANGELOG.md
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── LICENSE
├── README.md
└── SECURITY.md
```

## Next Steps

After running `Invoke-Plaster`:

1. **Add your data collection logic** — rename and populate `Get-AbrVendorProductExample.ps1` in `Src\Private\`
2. **Update the Invoke function** — wire up your private functions inside the `foreach ($System in $Target)` loop in `Src\Public\Invoke-AsBuiltReport.Vendor.Product.ps1`
3. **Expand the report config** — add your sections to `AsBuiltReport.Vendor.Product.json` under `InfoLevel` and `HealthCheck`
4. **Update the language file** — add string entries to `Language\en-US\VendorProduct.psd1`
5. **Update the README** — replace placeholder content in `README.md`
6. **Initialise a git repository** — `git init`, add a remote, and push
7. **Generate the README banner** — once the repo is public in the AsBuiltReport organisation, run the [Repo banners](https://github.com/AsBuiltReport/.github/actions/workflows/repo-banners.yml) workflow (or wait for its daily run) so the banner at the top of `README.md` exists

Refer to existing AsBuiltReport modules such as [AsBuiltReport.VMware.vSphere](https://github.com/AsBuiltReport/AsBuiltReport.VMware.vSphere) or [AsBuiltReport.Microsoft.AD](https://github.com/AsBuiltReport/AsBuiltReport.Microsoft.AD) for implementation examples.
