# My Prompt
function prompt () {  
    [String]$currentPath = Get-Location
    $currentPath = $currentPath.Replace("$HOME", "~")
    if ((Get-History).Count -ge 1 ) {
        $executionTime = ((Get-History)[-1].EndExecutionTime - (Get-History)[-1].StartExecutionTime).TotalMilliSeconds
        $executionTime = [math]::Round($executionTime, 2) / 1000
    } else {
        $executionTime = 0
    }
    $dateTime = (Get-Date -F F)

    Write-Host "`r`n "                      -NoNewLine
    Write-Host "実行時間: ${executionTime} sec"             -NoNewLine
    Write-Host "`r`n"                                       -NoNewLine
    Write-Host "`r`n["                                      -NoNewLine
    Write-Host "$($env:USERNAME)@$($env:COMPUTERNAME) "     -NoNewLine -ForeGroundColor DarkGreen
    Write-Host "${currentPath} "                            -NoNewLine -ForeGroundColor DarkCyan
    Write-VcsStatus
    Write-Host "]`r`n "                                     -NoNewLine
    Write-Host "${dateTime}"                                -NoNewLine -ForeGroundColor Gray
    Write-Host "`r`n"                                       -NoNewLine
    Write-Host " > "                                        -NoNewLine
    return " `b"
}

Set-Location "C:\Users\sgktm\Develop"

# Key Binding
## emacs
Set-PsReadlineOption -EditMode Emacs -BellStyle None

Write-Host "実行ポリシーは" (Get-ExecutionPolicy) "です。" -ForegroundColor "Yellow"
Write-Host "現在のディレクトリは" (Get-Location) "です。" -ForegroundColor "Yellow"
Write-Host

Set-Alias vim 'C:\Program Files (x86)\vim82-kaoriya-win64\vim.exe'

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

## Java Alias
#function customJavac {javac -encoding utf8}
#Set-Alias javac customJavac

#function customJava {java -cp .\}
#Set-Alias java customJava

function go {vdesk on:2 noswitch:false run:chrome ; sleep 5 ; vdesk on:3 noswitch:false run:code ..\Develop\}
function chrome{vdesk on:2 noswitch:false run:chrome}
#function code{vdesk on:3 noswitch:false run:code ..\Develop\}

# For Git
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

$GitPromptSettings.BeforeText = "("
$GitPromptSettings.AfterText = ")"
Set-Item env:LANG -Value ja_JP.UTF-8
