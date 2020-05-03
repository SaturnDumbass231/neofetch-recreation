@echo off
cls
:: Some neofetch recreation lol
whoami
echo                   /////                 -----
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO echo           /(((((((((((((((((((          OS: %%i %%j %%k
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==32BIT echo        ((((((((((((((((((((((((((/      System type: x86
if %OS%==64BIT echo        ((((((((((((((((((((((((((/      System type: x64

pause