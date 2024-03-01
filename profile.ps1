# Specify the folder where your function files are located below:
$scriptfolder=""

#This will get all .ps1 files and add the functions in them for you to use in Powershell:
Get-ChildItem "$scriptfolder\*.ps1" | ForEach-Object {
    . $_.FullName
}