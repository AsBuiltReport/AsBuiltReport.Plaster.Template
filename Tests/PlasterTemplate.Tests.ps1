BeforeAll {
    # Import the module under test
    # Requires AsBuiltReport.Core to be installed
    Import-Module AsBuiltReport.Core -ErrorAction Stop
    Import-Module (Join-Path $PSScriptRoot '..\<%= $PLASTER_PARAM_ModuleName %>\<%= $PLASTER_PARAM_ModuleName %>.psd1') -Force -ErrorAction Stop
}

Describe '<%= $PLASTER_PARAM_ModuleName %>' {

    Context 'Module Manifest' {

        BeforeAll {
            $script:manifest = Test-ModuleManifest -Path (Join-Path $PSScriptRoot '..\<%= $PLASTER_PARAM_ModuleName %>\<%= $PLASTER_PARAM_ModuleName %>.psd1') -ErrorAction Stop
        }

        It 'has a valid manifest' {
            $script:manifest | Should -Not -BeNullOrEmpty
        }

        It 'has the correct module name' {
            $script:manifest.Name | Should -Be '<%= $PLASTER_PARAM_ModuleName %>'
        }

    }

    Context 'Public Functions' {

        It 'exports Invoke-<%= $PLASTER_PARAM_ModuleName %>' {
            $commands = Get-Command -Module '<%= $PLASTER_PARAM_ModuleName %>'
            $commands.Name | Should -Contain 'Invoke-<%= $PLASTER_PARAM_ModuleName %>'
        }

    }

}
