$currentLocation = Get-Location
# Make PowerShell profile point to this repo
New-Item -Path $profile\..\ -ItemType SymbolicLink -Value $currentLocation\..\home\
