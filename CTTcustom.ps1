$debug_Override = $null
$repo_root_Override = $null
$timeFilePath_Override = $null
$updateInterval_Override = $null
$show_help_Override = $null
$EDITOR_Override = $null

$env:POSH_THEME = "$HOME\Documents\GitHub\powershell-profile\themes\jandedobbeleer.omp.json"
. "$HOME\Documents\GitHub\powershell-scripts\Invoke-SPOVersionTrim.ps1"
. "$HOME\Documents\GitHub\powershell-scripts\New-SPOTrimTargetCsv.ps1"
. "$HOME\Documents\GitHub\powershell-scripts\Invoke-SPORecycleBinMaintenance.ps1"

# Set-PSReadLineKeyHandler `
#     -Chord 'Ctrl+Shift+t' `
#     -BriefDescription 'SPOVersionTrim' `
#     -LongDescription 'Open SharePoint Version Trim Utility' `
#     -ScriptBlock {
#         [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
#         [Microsoft.PowerShell.PSConsoleReadLine]::Insert('Invoke-SPOVersionTrim')
#         [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
#     }

# SharePoint Version Trim Utility
function spotrim {
    Invoke-SPOVersionTrim @args
}

# Zed Editor Alias
function ze {
    zed --new --wait @args
}
Set-Alias -Name zz -Value ze
