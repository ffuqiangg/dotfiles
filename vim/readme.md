windows powershell vim 目录结构
```
~\vimfiles
 | autoload  ->  ~/.vim/autoload
 | ...
 vimrc       ->  ~/.vimrc
```
powershell 创建类 Linux 软连接
```powersehll
New-Item -Path C:\LinkDir -ItemType SymbolicLink -Value F:\RealDir
```
也可以通过在配置文件 `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` 中添加函数简化命令
```powershell
function make-link ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}
```
以上操作在非开放者账号的 Windows 上必须以管理员身份执行。  
目标为目录必须使用完整路径，目标为文件PowerShell 7.1 开始可以用相对路径。
