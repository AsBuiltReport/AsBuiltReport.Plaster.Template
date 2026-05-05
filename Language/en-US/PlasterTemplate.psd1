# culture = 'en-US'
@{
# Update the following string data as needed for new report modules.
# Use the same keys as in other AsBuiltReport language files for consistency.
# Use the placeholder {0}, {1}, etc. for dynamic values.
# Example: 'ModuleName = {0} is currently installed.' -f $ModuleName
# Update GetAbrFunctionName as needed for private functions in the module.
# Refer to the AsBuiltReport website for more information on creating report modules:
# https://www.asbuiltreport.com/dev-guide/creating-a-report-module/
GetAbrFunctionName = ConvertFrom-StringData @'
    InfoLevel        = {0} InfoLevel set at {1}.
    Collecting       = Collecting {0} {1} information.
    Found            = Found {0} {1}.
    NotFound         = No {0} {1} found.
    Connected        = Successfully connected to {0}.
    Skipped          = {0} {1} is disabled or not configured. Skipping.
    HealthCheck      = {0} is in a {1} state.
    ParagraphDetail  = The following sections detail the {0} {1}.
    ParagraphSummary = The following table summarizes the {0} {1}.
'@
}