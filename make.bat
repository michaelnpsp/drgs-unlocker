::
:: rtc.exe from LuaRT required to create the lua executable: https://luart.org/
::

@echo off

SET VER="1.0.0.0"
SET PRO="DRG:Survivor Unlocker"
SET COM="michaelnpsp"
SET COP="(C) 2024 MiCHaEL"

echo Compiling drgs-unlocker.lua ...

rtc.exe -s -c drgs-unlocker.lua

IF EXIST tools\verpatch.exe (
	tools\verpatch.exe drgs-unlocker.exe %VER% /s InternalName %PRO% /s copyright %COP% /s company %COM% /s desc %PRO% /s product %PRO% /s prodver %VER%
)

echo Done.

pause
