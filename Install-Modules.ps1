#Install posh-git and oh-my-posh PowerShell modules
Install-Module posh-git -AllowPrerelease -Force
Install-Module oh-my-posh -AllowPrerelease -Force

#Install PSReadLine
Install-Module PSReadLine -AllowPrerelease -Force

#Install powersehll-git-aliases
Install-Module git-aliases -Scope CurrentUser -AllowClobber
