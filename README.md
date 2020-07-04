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

### Setup Profile for Powershell and Powershell Core

Open the default PROFILE ps1 file for both Powershell & Powershell Core.
Add the contents of the respective files from profiles folder.

Ensure that the pre-requisites are installed. These can be installed using [Install-Modules.ps1](Install-Modules.ps1) script.

```Powershell

.\Install-Modules.ps1

```
