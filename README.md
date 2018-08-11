# Automate Windows machine Setup

## Goal

The objective of this is to automate the installation of software on Windows machine

## Install Boxstarter and Chocolatey

### Set `ExecutionPolicy` to `Unrestricted`

```Powershell

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

```

### Install `Boxstarter` using Powershell, Chocolatey is installed as part of this

```powershell

iex ((New-Object System.Net.WebClient).DownloadString('http://boxstarter.org/bootstrapper.ps1')); get-boxstarter -Force

```

### Install packages / softwares using `boxstarter-script.txt` file

```Powershell

Install-BoxstarterPackage -PackageName boxstarter-script.txt -DisableReboots

```