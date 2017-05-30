# Clangbuilder

Automated tools help developers on Windows platforms building LLVM and clang.
 

## Installation

### PowerShell Policy

Often you need to change the Power Shell execution policy

```powershell
Get-ExecutionPolicy
```

**Output**:

> Restricted

Please run PowerShell with administrator rights, and Enter:   

```powershell
Set-ExecutionPolicy RemoteSigned
```

### General Setup

Clone clangbuilder on Github

```shell
git clone https://github.com/fstudio/clangbuilder.git clangbuilder
```

Click the *Install.bat* in the clangbuilder directory, this will run PowerShell startup  *bin/Installer.ps1* 

The installation script will compile ClangbuilderUI and create a shortcut, download required packages.

Directory layout is as follows:

![images-1](./docs/images/treelayout.png)





## Clang on Windows

Clangbuilder Now Only support use Visual C++ build Clang LLVM LLDB. 

Best Visual Studio Version:

>VisualStudio 2015

Additional, Your can use MSYS2, use pacman install Clang.

```shell
pacman -S clang
```



## ClangbuilderUI

Your can click ClangbuilderUI, select your Visual Studio Version and Arch, and configuration

![clangbuilder](./docs/images/cbui.png)

## Commandline

```cmd
./bin/clangbuilder
```

## Suggest

+ Best Platform is Windows 10 x64 
+ Select `Use Clean Environment` will reset current process Environment PATH value, Resolve conflict environment variables
+ If your will build lldb, your should install python3.

## Environment Console

When you only need to start a console environment, you can click on the `Environment Console`。

## Add Portable Utilities

You can modify `config/packages.json`, 
and then double-click install.bat to the software you need as part of the Clangbuilder is added to the environment


## Add Extranl Libs

You can add extranl lib, such as [z3](https://github.com/Z3Prover/z3) , more info to view ExternalLibs.md

## Bootstrap

**If your memory is small, use ninja to build LLVM, and in the process of linking, the build process is slow due to memory contention. And the computer may even lose its response.**

Link clang requre 1.5GB memory，other require 0.8GB，and Ninja create N+ (processor default 6) link process, requre (0.8xN+0.7)GB or great memory  

## Copyright

Author: Force.Charlie  
Copyright © 2017 ForceStudio. All Rights Reserved.

