# Powershell Config

## Introduction

contains a package

- [Oh-My-Posh](https://ohmyposh.dev/)

And 4 Modules

- PSColor
- posh-git
- git-aliases
- PSReadLine

## Installation

1. Install Windows Terminal

2. run the following command

   ```bash
   # install Oh-My-Posh
   winget install JanDeDobbeleer.OhMyPosh -s winget
   # install modules
   Install-Module PSColor
   Install-Module posh-git
   Install-Module git-aliases -DisableNameChecking
   Install-Module PSReadLine -Force
   ```

## Config

1. Copy `Microsoft.PowerShell_profile.ps1` to `C:\Users\Administrator`
2. Open `settings.json` of `Windows Terminal`, replace content of `settings.json`
3. Open `Windows Terminal`, enjoy it ~
