@echo off
call m.bat
if not errorlevel 1 (
    bin\hdfmonkey put C:\Development\Projects\ZXSpectrumNext\ZXNextSD\cspect-next-2gb.img project.nex
    bin\CSpect.exe -r -brk -w3 -zxnext -nextrom -map=project.map -mmc=C:\Development\Projects\ZXSpectrumNext\ZXNextSD\cspect-next-2gb.img
)
