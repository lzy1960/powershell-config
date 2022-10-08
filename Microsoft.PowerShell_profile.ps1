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
function nin {
  param($pack)
  npm i $pack
}
function nu {
  param($pack)
  npm un $pack
}
function nls {npm ls}
function nlsg {nls -g}
function nr {
  param($script)
  npm run $script
}
function nd {nr dev}
function nse {nr serve}
function nb {nr build}
function nt {nr test}
function nl {nr lint}
function nig {
  param($pack)
  ni -g $pack
}
function nid {
  param($pack)
  ni -D $pack
}
function nigd {
  param($pack)
  ni -gD $pack
}

# pnpm alias
function pi {
  param($pack)
  pnpm i $pack
}
function prm {
  param($pack)
  pnpm i $pack
}
function prm {pnpm remove}
function pls {pnpm ls}
function plsg {pnpm ls -g}
function pa {
  param($pack)
  pnpm add $pack
}
function pr {
  param($script)
  pnpm run $script
}
function pd {pr dev}
function pse {pr serve}
function pb {pr build}
function pt {pr test}
function pl {pr lint}
function pig {
  param($pack)
  pr -g $pack
}
function pid {
  param($pack)
  pr -D $pack
}
function pigd {
  param($pack)
  pr -gD $pack
}

# yarn alias
function y {yarn}
function ya {
  param($pack)
  ya $pack
}
function yad {
  param($pack)
  ya -D $pack
}
function yrm {
  param($pack)
  yarn remove $pack
}
function yls {yarn list}
function yg {
  param($script)
  yarn global $script
}
function yga {
  param($pack)
  yg add $pack
}
function ygad {
  param($pack)
  yga -D $pack
}
function ygrm {
  param($pack)
  yg remove $pack
}
function ygls {yg list}
function yr {
  param($script)
  yarn run $script
}
function yd {yr dev}
function ys {yr serve}
function yb {yr build}
function yt {yr test}
function yl {yr lint}

# vscode
function c {
  param($path='.')
  code $path
}

# rimraf
function rim {
  param($path='./node_modules/')
  rimraf $path
}
