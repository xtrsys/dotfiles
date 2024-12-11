Remove-Alias gs -Force -ErrorAction SilentlyContinue
Remove-Alias gm -Force -ErrorAction SilentlyContinue
Remove-Alias gp -Force -ErrorAction SilentlyContinue 
Remove-Alias gpm -Force -ErrorAction SilentlyContinue 
Remove-Alias gcm -Force -ErrorAction SilentlyContinue 

# ALIAS
Set-Alias grep findstr
# MODULES
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_lean.omp.json" | Invoke-Expression
$env:POSH_GIT_ENABLED = $true
Import-Module PSReadLine
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Ctrl+q -Function TabCompleteNext
Set-PSReadLineKeyHandler -Key Ctrl+Q -Function TabCompletePrevious

#FUNCTIONS
function gs { git status }
function ga { git add . }
function gp { git pull }
function gpm { git pull origin master }
function gco { git checkout $args }

function gmm { git merge master }
function gcm { git commit -m $args }
