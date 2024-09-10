chcp 65001
cd "C:\Users\gusta\OneDrive\Documentos\Projetos"
git clone $(Get-Clipboard)
$newpath = $(Get-Clipboard).split("/")[-1]
cd $newpath
code .

$result = "git clone $(Get-Clipboard)"
$horaFormatada = (Get-Date).ToString("dd/MM/yyyy HH:mm:ss")
$scriptName = $MyInvocation.MyCommand.Name

Add-Content -Path "log.txt" -Value "[$horaFormatada][$scriptName] : $result"