# Krew setup

[Krew](https://krew.sigs.k8s.io/) is a kubectl plugin manager

## Download krew exe

Get the latest version of krew from [releases](https://github.com/kubernetes-sigs/krew/releases)

Move the file to `C:\tools` folder

Install krew using `krew install krew` command

## Update PATH 

```powershell

 [Environment]::SetEnvironmentVariable("Path", $env:Path + ";%USERPROFILE%\.krew\bin", [EnvironmentVariableTarget]::Machine) 

```

## Delete unwanted entries from PATH

[StackOverflow link](https://stackoverflow.com/questions/39010405/powershell-how-to-delete-a-path-in-the-path-environment-variable)

[Pathtub python script](https://github.com/np-8/pathtub) easier way to manage PATH variables using Python

```powershell
function changePath($itemToRemove) {
# store PATH in a variable

$path = [System.Environment]::GetEnvironmentVariable(
    'PATH',
    'Machine'
)

# remove unwanted element

$path = ($path.Split(';') | Where-Object { $_ -ne $itemToRemove }) -join ';'

# set the path value again

[System.Environment]::SetEnvironmentVariable(
    'PATH',
    $path,
    'Machine'
)
}

```