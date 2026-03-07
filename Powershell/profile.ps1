oh-my-posh init pwsh --config ~/.ohmyposh/ANB.omp.json | Invoke-Expression

Import-Module PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView

Function Remove-Build { Remove-Item -LiteralPath Build -Force -Recurse }
Function Remove-BinObj { Get-ChildItem -Path .\ -Include bin,obj -Directory -Recurse | ? { $_.FullName -inotmatch '\\packages\\' } | foreach ($_) { Write-Output $_.fullname; Remove-Item $_.fullname -Force -Recurse } }
Function Remove-Bin { Get-ChildItem -Path .\ -Include bin -Directory -Recurse | ? { $_.FullName -inotmatch '\\packages\\' } | foreach ($_) { Write-Output $_.fullname; Remove-Item $_.fullname -Force -Recurse } }
