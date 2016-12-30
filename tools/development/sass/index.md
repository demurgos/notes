# Sass

Modern language for stylesheets: powerful syntax and stylesheet imports from third party.

## Installation

Make sure you have Ruby (with Gem), then simply execute `gem install sass`. (You may have to start a terminal with administrator privileges).

__Fixing__ the script if there spaces in the path of your Ruby directory:

Edit the file `RUBY_HOME $ bin/sass.bat` by removing the superfluous double quotes. Here is what you should get:

```batch
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Program Files\Ruby22\bin\ruby.exe" "C:/Program Files/Ruby22/bin/sass" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Program Files\Ruby22\bin\ruby.exe" "%~dpn0" %*
```

## Check installation

```shell
# Run as a normal user
sass --version
```
