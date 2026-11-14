# :arrows_clockwise: AsBuiltReport Plaster Template Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- `IconUri` in the PSD1 manifest templates is now blank and commented out
- The README of a new module now opens with its AsBuiltReport brand banner, rendered centrally in the [`.github`](https://github.com/AsBuiltReport/.github/tree/main/generator) repo, in place of the small organisation logo. The banner also links to the website, which the old logo did not.
- README section headings in a new module use the AsBuiltReport [section icons](https://github.com/AsBuiltReport/.github/tree/main/assets/section-icons) in place of emoji
- README badges in a new module use the brand palette: link blue for the version, console blue for downloads and contributors, highlighter for the platform

### Fixed

- The HealthCheck example rows in a new module's README use the central [highlight swatches](https://github.com/AsBuiltReport/.github/tree/main/assets/highlight-swatches) in place of images from `place-hold.it`, which no longer load

### Removed

- `AsBuiltReport.png` icon asset is no longer deployed to new modules

## [1.1.0] - 2026-05-06

### Added

- `CompanyName` parameter — optional text prompt (defaults to `Unknown`); written as an active field in the generated PSD1
- `PowerShellVersion` choice parameter — three options (`Windows PowerShell 5.1 only`, `PowerShell 7+ only`, `Windows PowerShell 5.1 and PowerShell 7+`) driving both `PowerShellVersion` and `CompatiblePSEditions` in the generated module manifest
- Three PSD1 manifest template variants (`PS51`, `PS7`, `PS51AndPS7`) deployed conditionally via the manifest `condition` attribute
- Starter private function template (`Src\Private\Get-AbrExample.ps1`) deployed as `Get-Abr<VendorName><ProductName>Example.ps1`
- Starter Pester 5 test template (`Tests\PlasterTemplate.Tests.ps1`) deployed as `<ModuleName>.Tests.ps1`
- `AsBuiltReport.png` icon asset
- Repo `.gitignore` excluding Claude, temp files, OS and IDE artifacts
- README rewritten with parameter table, PowerShell edition choices, scaffolded structure tree, example output, and next-steps guidance

### Changed

- `PowerShellVersion` parameter changed from free-text to 3-way choice; default is `PowerShell 7+ only`
- `<newModuleManifest>` replaced by hand-crafted `<templateFile>` PSD1 variants with full PSGallery metadata (`Tags`, `LicenseUri`, `ProjectUri`, `IconUri`, `ReleaseNotes`), `RequiredModules` pinned to `AsBuiltReport.Core 1.6.2`, and `FunctionsToExport` pre-populated
- Language file expanded from 4 to 9 en-US string stubs (`InfoLevel`, `Collecting`, `Found`, `NotFound`, `Connected`, `Skipped`, `HealthCheck`, `ParagraphDetail`, `ParagraphSummary`)
- Invoke function template updated with commented example section inside the `foreach` loop
- JSON config template: removed duplicate `_comment_` key; added `Example` entries under `InfoLevel` and `HealthCheck`
- PlasterManifest.xml version bumped `1.0.0` → `1.1.0`

### Fixed

- `.github\workflows\PSScriptAnalyzer.yml`: `actions/checkout@v6` → `actions/checkout@v4`
- `.github\workflows\Release.yml`: `Test-ModuleManifest` and `Publish-Module` paths corrected to target the inner module folder

## [1.0.0] - 2021-06-28

### Added

- Initial release
