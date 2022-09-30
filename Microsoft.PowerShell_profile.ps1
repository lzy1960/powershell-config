# Oh My Posh 配置
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\PowerLine.omp.json" | Invoke-Expression

# 五彩斑斓的命令行
Import-Module PSColor
# 用于检测git分支状态
Import-Module posh-git
# git 别名
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

# npm alias
function nin {npm i}
function nu {npm un}
function nls {npm ls}
function nlsg {npm ls -g}
function ncl {rimraf ./node_modules/}
function nr {npm run}
function nd {npm run dev}
function nse {npm run serve}
function nt {npm run test}
function nl {npm run lint}
function nig {npm i -g}
function nid {npm i -D}
function nigd {npm i -gD}

# pnpm alias
function pi {pnpm i}
function prm {pnpm remove}
function pls {pnpm ls}
function plsg {pnpm ls -g}
function pa {pnpm add}
function pr {pnpm run}
function pd {pnpm run dev}
function pse {pnpm run serve}
function pt {pnpm run test}
function pl {pnpm run lint}
function pig {pnpm i -g}
function pid {pnpm i -D}
function pigd {pnpm i -gD}

# yarn alias
function y {yarn}
function ya {yarn add}
function yad {yarn add -D}
function yrm {yarn remove}
function yls {yarn list}
function yga {yarn global add}
function yga {yarn global add -D}
function ygrm {yarn global remove}
function ygls {yarn global list}
function yr {yarn run}
function yd {yarn run dev}
function ys {yarn run serve}
function yt {yarn run test}
function yl {yarn run lint}
