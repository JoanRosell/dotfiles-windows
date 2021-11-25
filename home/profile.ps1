function GoToDevHome {
    Set-Location 'C:\dev\'
}

function GoToVyHome {
    Set-Location 'C:\VuelingApps\Apps'
}

function Find-SolutionFile {
    return Get-ChildItem . | Where-Object {$_.FullName -match ".sln$"}
}

function Open-VisualStudio {
    $solution = Find-SolutionFile
    Write-Output "Opening Solution: $solution"
    explorer.exe .
    Start-Process devenv $solution
}

Set-Alias 'dev' GoToDevHome
Set-Alias 'vy' GoToVyHome
Set-Alias 'svs' Open-VisualStudio
