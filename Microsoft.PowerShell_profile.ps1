Import-Module DirColors
Import-Module posh-git
# Import-Module oh-my-posh
Import-Module git-aliases -DisableNameChecking

Import-Module PSReadLine
 
#快捷键设置
 
# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History
 
# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
 
# 设置 Tab 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
 
# 设置 Ctrl+d 为退出 PowerShell
Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit
 
# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
 
# 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
 
# 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# 设置预测文本的颜色
Set-PSReadLineOption -Colors @{ InlinePrediction = "#267233" }

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\PowerLine.omp.json" | Invoke-Expression

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
