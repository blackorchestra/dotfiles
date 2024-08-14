# Make terminal setting more universal
# Issue: different home directory name on pc and laptop
$HOMEPATH = $env:HOMEPATH # (Get-Item Env:HOMEPATH).Value
$POSH_THEME = 'catppuccin_mocha_blackorchestra' # 'jandedobbeleer'
# $POSH_CONFIG_PATH = 'C:' + $HOMEPATH + '\AppData\Local\Programs\oh-my-posh\themes\' + $POSH_THEME + '.omp.json' # use this for windows
$POSH_CONFIG_PATH = '/Users/ihor/.config/omp/' + $POSH_THEME + '.omp.json' # use this for macos


#oh-my-posh init pwsh --config 'C:\Users\kaspr\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config $POSH_CONFIG_PATH | Invoke-Expression

Import-Module -Name Terminal-Icons

Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History

# ALIASSES
Set-Alias vim nvim
Set-Alias grep findstr

# Custom funnctions
function whereis ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
