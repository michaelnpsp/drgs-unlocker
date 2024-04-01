::
:: rtc.exe from LuaRT required to create the lua executable: https://luart.org/
::

echo off

SET VER=1.1
SET PRO="DRG:Survivor Unlocker"
SET COM="michaelnpsp"
SET COP="(C) 2024 MiCHaEL"
SET ZIP=binaries/drgs-unlocker-%VER%.zip

echo Compiling drgs-unlocker.lua

rtc.exe -s -c -o drgs-unlocker.exe drgs-unlocker.lua

IF EXIST tools\verpatch.exe (
	tools\verpatch.exe drgs-unlocker.exe "%VER%" /s InternalName %PRO% /s copyright %COP% /s company %COM% /s desc %PRO% /s product %PRO% /s prodver "%VER%"
)

IF NOT EXIST binaries mkdir binaries

tar.exe -a -c -f %ZIP% drgs-unlocker.exe LICENSE

del .\drgs-unlocker.exe

echo Binary package created in: %ZIP%
echo Done.

pause
