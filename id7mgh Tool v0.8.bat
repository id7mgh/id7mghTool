��

@echo off        
:: BatchGotAdmin        
:-------------------------------------        
REM  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
REM --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    ) else ( goto gotAdmin )  
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
    "%temp%\getadmin.vbs"  
    exit /B
:gotAdmin  


@echo off
:startbatchfile
set "try=5"
set "version=v0.8"
set "cracked=(cracked by id7mgh)"
set "color=F"
set "b=[46;37m"
set "b1=[40;36m"
set "w=[40;37m"
title id7mgh Tool %version%


if exist C:\ProgramData\id7mghTool\config.ini goto configloader
echo creating id7mgh config in C:\ProgramData\id7mghTool
timeout /t 4 >nul
cd C:\ProgramData
mkdir id7mghTool
:ceateconfig
cd C:\ProgramData\id7mghTool
if exist C:\ProgramData\id7mghTool\config.ini goto configloader
echo the default username and password
echo username : admin
echo password : 1234
timeout /t 5 >nul
echo.>config.ini
(echo set username=admin) > config.ini
(echo set password=1234) >> config.ini




:configloader
cd C:\ProgramData\id7mghTool
rename config.ini config.bat
call config.bat
rename config.bat config.ini

cls
title Login
 color %color%
mode con: cols=43 lines=10
cls
echo\%b% %b1%-%w%id7mgh Tool Login
:username
 set /p name=%b% %b1%-%w%[40;37mEnter Username: 
if '%name%' == '%username%' goto 1success
echo\%b% %b1%-%w%[40;31mWorng 
set /a try=%try%-1
if '%try%' == '0' goto failed
goto username
:1success
echo\%b% %b1%-%w%[40;32msuccess
:password
 set /p passw=%b% %b1%-%w%[40;37mEnter password: 
if '%passw%' == '%password%' goto startupsus
echo %b% %b1%-%w%[40;31mWorng password
set /a try=%try%-1
if '%try%' == '0' GOTO failed

goto password
:startupsus
title id7mgh Tool %version%
 color %color%
 goto hub
:failed
echo\%b% %b1%-%w%you are failing to many times
timeout /t 2 >nul
echo\%b% %b1%-%w%exiting
timeout /t 3 >nul
exit






 color %color%

 
:hub
@echo off
cls
title id7mgh Tool %version%
 color %color%

mode con: cols=59 lines=17
echo /=-------------------------------------------------------=\
echo #                  1 - bypass screen shares               #
echo #   id7mgh Tool    2 - LCproxy                            #
echo #                  3 -                                    #
echo #                  4 - shortcuts                          #
echo #     coding       5 - optifine settings (link)           #
echo #       by         6 - bits                               #
echo #     id7mgh       7 - programs.BAT                       #
echo #                  8 -                                    #
echo #                  s - settings                           #
echo #                 up - update                             #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo\                                                 %version%
 set /p hub=.  select Number: 
if '%hub%' == '1' GOTO hubbypass
if '%hub%' == '2' GOTO guilc
if '%hub%' == '3' GOTO 
if '%hub%' == '4' GOTO 
if '%hub%' == '5' GOTO shortcuts
if '%hub%' == '6' GOTO optifine
if '%hub%' == '7' GOTO bits123
if '%hub%' == '8' GOTO reghub
if '%hub%' == 's' GOTO settingshub
if '%hub%' == 'hub' GOTO hub
if '%hub%' == 'up' GOTO up
cls
goto hub


:optifine
start https://www.mediafire.com/folder/eeopmn6stk87l/Optifine+Settings
cls
goto hub

:up
cls
echo 1 - auto update
echo 2 - open the website
echo x - to back to main menu
 set /p updater=select Number:
 if '%updater%' == '1' GOTO 1updater
 if '%updater%' == '2' GOTO 2updater
 if '%updater%' == 'x' GOTO hub

 cls
 goto up
:1updater
cls
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/id7mgh/id7mghTool/main/update.bat -Outfile C:\ProgramData\id7mghTool\updater.bat"
call C:\ProgramData\id7mghTool\updater.bat
 if '%version%' == '%upver%' GOTO lastetupdate
echo you are in %version%
echo you will update to %upver%
timeout /t 3 >nul
powershell -Command "Invoke-WebRequest %upverlink% -Outfile C:\ProgramData\id7mghTool\id7mgh Tool %upver%.bat"
del C:\ProgramData\id7mghTool\updater.bat
start C:\ProgramData\id7mghTool\
cls
echo ur file at C:\ProgramData\id7mghTool
echo press any key to exit
pause >null

exit
:2updater

start https://id7mgh.blogspot.com
cls
goto hub
:lastetupdate
cls
echo you are in the lastet update

echo press any key to exit
pause >null
exit
:bits123
 color %color%
cls
title Bits  \  id7mgh Tool %version%
mode con: cols=59 lines=11
echo /=-------------------------------------------------------=\
echo #                                                         #
echo #   id7mgh Tool      Enter any number                     #
echo #                    5 is recommended                     #
echo #                                                         #
echo #                    x - back                             #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo\                                                 %version%
 set /p bits=.  select Number: 
if '%bits%' == 'x' GOTO hub
cls
mode con: cols=49 lines=22
:bitssel
cls
echo/               ====================
echo.                  keep this open 
echo/               ====================
ping 127.0.0.1 -n %bits%

sc query BITS | find /I "STATE" | find "STOPPED"
goto :start123sus

:start123sus
sc start BITS
goto :bitssel:


:settingshub
title id7mgh Tool %version%
 color %color%
mode con: cols=59 lines=17
cls
echo /=-------------------------------------------------------=\
echo #                  1 - change color                       #
echo #   id7mgh Tool    2 -                                    #
echo #                  3 - Log out                            #
echo #     coding       4 -                                    #
echo #       by         5 - reset username and password        #
echo #     id7mgh       6 - change username and password       #
echo #                  7 - credits                            #
echo #                  8 - self-delete                        #
echo #                  x - back                               #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo\                                                 %version%
 set /p hub=.  select Number: 
if '%hub%' == '1' GOTO colorhub
if '%hub%' == '2' GOTO 
if '%hub%' == '3' GOTO Logout123
if '%hub%' == '4' GOTO 
if '%hub%' == '5' GOTO resetlogin
if '%hub%' == '6' GOTO changeLogin
if '%hub%' == '7' GOTO credits
if '%hub%' == '8' GOTO destruct
if '%hub%' == 'hub' GOTO hub
if '%hub%' == 'x' GOTO hub
cls

:colorhub
cls
echo    default is "F"
echo    Example "10" 1 = background color \\ 0 = text color
echo\
echo    0 = Black       8 = Gray
echo    1 = Blue        9 = Light Blue
echo    2 = Green       A = Light Green
echo    3 = Aqua        B = Light Aqua
echo    4 = Red         C = Light Red
echo    5 = Purple      D = Light Purple
echo    6 = Yellow      E = Light Yellow
echo    7 = White       F = Bright White
echo/
 set /p color=.  select color:
color %color%
cls
goto settingshub
:destruct

del "%~f0" & cmd /c "%~dp0\%new_filename%" renamed
exit /b
:Logout123

cls
goto configloader


:credits
mode con: cols=65 lines=30
cls
echo HansyEXITO V2  by       https://youtube.com/watch?v=lZ0bRnvVJNM
echo KARIM CLIENT  by        https://youtube.com/watch?v=69WHF9DbK1k
echo Learix FPS 2.0  by      https://discord.com/invite/tweakcentral
echo ziblacking method by    https://youtube.com/c/Ziblacking
echo BetterDelay v2.0 by     https://youtube.com/c/Ziblacking
echo Better hit detection by https://youtube.com/c/Ziblacking
echo rod method by ZBADY_#8580 in discord
echo optifine settings by https://youtube.com/c/Merryzz
echo LCproxy https://discord.gg/lcproxy
pause >nul
cls
goto settingshub

:changeLogin
cls
 set /p namec=Enter Username: 
 set /p passwc=Enter password: 
(echo set username=%namec%) > config.ini
(echo set password=%passwc%) >> config.ini
goto settingshub
cls

:resetlogin
del C:\ProgramData\id7mghTool\config.ini
cls
goto settingshub



:shortcuts
cls
title id7mgh Tool %version%
 color %color%
mode con: cols=59 lines=17
echo /=-------------------------------------------------------=\
echo #                  1 - Disk Cleanup                       #
echo #   id7mgh Tool    2 - services                           #
echo #                  3 - Task Scheduler                     #
echo #                  4 - Device Manager                     #
echo #     coding       5 - registry Editor                    #
echo #       by         6 - System Properties                  #
echo #     id7mgh       7 -                                    #
echo #                  8 -                                    #
echo #                  9 -                                    #
echo #                  x - back                               #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo\                                                 %version%
 set /p hubshortcuts=.  select Number: 
if '%hubshortcuts%' == '1' GOTO Disk Cleanup
if '%hubshortcuts%' == '2' GOTO services.msc
if '%hubshortcuts%' == '3' GOTO taskschd.msc
if '%hubshortcuts%' == '4' GOTO devmgmt.msc
if '%hubshortcuts%' == '5' GOTO regeditshort
if '%hubshortcuts%' == '6' GOTO SystemPropertiesAdvanced
if '%hubshortcuts%' == '7' GOTO 
if '%hubshortcuts%' == '8' GOTO 
if '%hubshortcuts%' == '9' GOTO 
if '%hubshortcuts%' == 'hub' GOTO hub
if '%hubshortcuts%' == 'x' GOTO hub
cls
goto shortcuts




:Disk Cleanup
start %windir%\system32\cleanmgr.exe
cls
goto shortcuts
:services.msc
start %windir%\system32\services.msc
cls
goto shortcuts
:taskschd.msc
start %windir%\system32\taskschd.msc /s
cls
goto shortcuts
:devmgmt.msc
start %windir%\system32\devmgmt.msc
cls
goto shortcuts
:regeditshort
start %windir%\regedit.exe
cls
goto shortcuts
:SystemPropertiesAdvanced
start %windir%\System32\SystemPropertiesAdvanced.exe
cls
goto shortcuts
:
start %windir%
cls
goto shortcuts
:
start %windir%
cls
goto shortcuts
:
start %windir%
cls
goto shortcuts
































































































:hubbypass
title id7mgh Tool %version%
 color %color%
mode con: cols=59 lines=17
echo /=-------------------------------------------------------=\
echo #                  1 - fsutil reset   (not Recommended)   #
echo #   id7mgh Tool    2 - clean all temp files               #
echo #                  3 - restart explorer (not Recommended) #
echo #                  4 - inject a client (Recommended)      #
echo #     coding       5 -                                    #
echo #       by         6 -                                    #
echo #     id7mgh       7 -                                    #
echo #                  8 - clean prefech    (not Recommended) #
echo #                  9 - clean temp       (not Recommended) #
echo #                  x - back                               #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo\                                                 %version%
 set /p hubb=.  select Number: 
if '%hubb%' == '1' GOTO fsutilreset
if '%hubb%' == '2' GOTO clean
if '%hubb%' == '3' GOTO reex
if '%hubb%' == '4' GOTO injectclient
if '%hubb%' == '5' GOTO 
if '%hubb%' == '6' GOTO 
if '%hubb%' == '7' GOTO 
if '%hubb%' == '8' GOTO prefech123
if '%hubb%' == '9' GOTO cleantemp
if '%hubb%' == 'x' GOTO hub
cls
goto hubbypass






:prefech123
del /s /f /q C:\WINDOWS\Prefetch\*
cls
goto hubbypass

:cleantemp
del /s /f /q c:\windows\temp\*
del /s /f /q C:\Users\d7ooo\AppData\Local\Temp\*
cls
goto hubbypass




:clean
cls
del c:\windows\history
cls
del c:\windows\cookies
cls
del c:\windows\recent
cls
del c:\windows\history
cls
del c:\windows\cookies
cls
del c:\windows\recent
cls
del /F /Q %APPDATA%\Microsoft\Windows\Recent\*
cls
del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
cls
del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
cls
del /s /q /f "C:\windows\Minidump\*.*"
cls
del /s /f /q C:\windows\Minidump\
cls
wmic nteventlog where filename='system' cleareventlog
cls
wmic nteventlog where filename='security' cleareventlog
cls
wmic nteventlog where filename='logfilename' cleareventlog
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /va /f
cls
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /va /f
cls
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\TypedURLs" /va /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /va /f
cls
REG delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /va /f
cls
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\*
cls
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
cls
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
cls
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /VA /F
cls
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /VA /F
cls
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\*
cls
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
cls
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /VA /F
cls
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /VA /F
cls
REG delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\TypedURLs /va /f
cls
REG delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\TypedURLsTime /va /f
cls
REG delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /va /f
cls
del /F /Q %userprofile%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine
cls
del /F /Q %APPDATA%\Microsoft\Windows\Recent\*
cls
del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
cls
del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
cls
ipconfig /flushdns >nul
cls
del /s /f /q C:\WINDOWS\Prefetch\cmd*
cls
del /s /f /q C:\WINDOWS\Prefetch\cmd.exe*
cls
del /s /f /q C:\WINDOWS\Prefetch\powershell*
cls
del /s /f /q C:\WINDOWS\Prefetch\powershell.exe*
cls
cls
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
del c:\WIN386.SWP
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
del c:\WIN386.SWP
cls
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
goto theEnd
:do_clear
echo clearing %1
wevtutil.exe cl %1
cls
goto hubbypass








:fsutilreset
cls
echo Type this in cmd *run cmd as administrator*
echo\
echo fsutil usn deleteJournal /D C:
echo fsutil usn createJournal m=2147483648 a=1 C:
echo\
echo press any key to back
pause >nul
cls
goto hubbypass


:reex
taskkill /F /IM explorer.exe
start explorer.exe
cls
goto hubbypass




:injectclient
cls
echo paste a client path *Right click*
set /p inject=Enter path: 
cls
:inje1
echo 1 - start it as vshost.exe (Recommended)
echo 2 - start it as custom
echo 3 - nothing
set /p injcli11=Enter path:
if '%injcli11%' == '1' GOTO injcli1
if '%injcli11%' == '2' GOTO injcli2
if '%injcli11%' == '3' GOTO injcli3
cls
:injcli1
start %inject% /c vshost.exe
cls
goto hubbypass
:injcli2
cls
echo Example : chrome.exe
set /p injcli11=Enter name:
start %inject% /c %injcli11%
cls
goto hubbypass
:injcli3
start %inject%
cls
goto hubbypass






























































































:reghub
title id7mgh Tool %version%
 color %color%
mode con: cols=59 lines=17
echo /=-------------------------------------------------------=\
echo #                  1 - Karim Client                       #
echo #   id7mgh Tool    2 - HansyEXITO V2                      #
echo #                  3 - id7mghREG.v2.1                     #
echo #                  4 - Learix FPS 2.0                     #
echo #     coding       5 - best Internet settings             #
echo #       by         6 - rod method                         #
echo #     id7mgh       7 - Ziblacking method                  #
echo #                  8 - BetterDelay v2.0                   #
echo #                  9 - Better hit detection               #
echo #                  x - back                               #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo\                                                 %version%
 set /p hubb=.  select Number: 
if '%hubb%' == '1' GOTO KarimClient 
if '%hubb%' == '2' GOTO HansyEXITO
if '%hubb%' == '3' GOTO hubid7mghreg1
if '%hubb%' == '4' GOTO learixfps
if '%hubb%' == '5' GOTO bestTCP
if '%hubb%' == '6' GOTO rod123
if '%hubb%' == '7' GOTO ziblackingm
if '%hubb%' == '8' GOTO BetterDelayv2.0
if '%hubb%' == '9' GOTO Betterhitdetection
if '%hubb%' == 'x' GOTO hub
cls
goto reghub








:rod123
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin123
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear123 "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
goto theEnd123
:do_clear123
echo clearing %1
wevtutil.exe cl %1
goto :eof
:noAdmin123
echo You must run this script as an Administrator!
echo ^<press any key^>
:theEnd123
title Bits (rod) \  id7mgh Tool %version%
mode con: cols=60 lines=20
:rodmethodbits
echo/                   ====================
echo.                      keep this open 
echo/                   ====================
ping 127.0.0.1 -n 2

sc query BITS | find /I "STATE" | find "STOPPED"
goto :start1234

:start1234
sc start BITS
cls
goto rodmethodbits







:bestTCP
mode con: cols=15 lines=1
cls
netsh winsock reset catalog
netsh int tcp reset
netsh interface ip delete arpcache
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global netdma=enabled
netsh int tcp set global dca=enabled
netsh int tcp set supplemental template=custom icw=10
netsh int tcp set supplemental congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global fastopen=enabled
netsh interface ipv4 set interface "Ethernet" metric=70
netsh interface ipv4 set interface "Ethernet" mtu=1500
netsh interface ipv6 set interface "Ethernet" metric=70
netsh interface ipv6 set interface "Ethernet" mtu=1500
netsh int ipv4 set glob defaultcurhoplimit=255
netsh int ipv6 set glob defaultcurhoplimit=255
cls
goto reghub





















:ziblackingm
mode con: cols=15 lines=1
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh int tcp set global rsc=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global autotuning=restricted
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global rss=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set supplemental template=custom icw=10
netsh int tcp show global
cls 
goto reghub








:BetterDelayv2.0
mode con: cols=15 lines=1
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TcpDelAckTicks" /d "0" /t REG_DWORD /f
Reg.exe add %%i /v "MTU" /d "1450" /t REG_DWORD /f
Reg.exe add %%i /v "MSS" /d "1410" /t REG_DWORD /f
)

sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"


netsh interface ip delete arpcache
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh winsock reset catalog
netsh int tcp set global rsc=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
cls
goto reghub


:Better hit detection
mode con: cols=15 lines=1
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
cls
goto reghub










:KarimClient 
mode con: cols=120 lines=30
cls
@Echo off
title Karim Client %cracked%
color 3F

:menupicante
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.                                                                     
echo.
echo.
echo.
echo                                                            +.                     
echo                                                           -yo                     
echo                                                           syy-                    
echo                                                          -hyys                    
echo                                                          shyyh.                   
echo                                                  `-:/++++s+:/oo+++//:.`           
echo                                              :osyyyhyyyo:..``.-+syyyyyhys+.       
echo                                             oh+hdhyyys/-.`````.-:+yyyhddosh.      
echo                                          ``:oy/sdohs/:o.```````.:+:oyssy/os+.`    
echo                                         .```..---/:--...```````...--:/---..`````  
echo                                        .```//-......```````````````.......-o.``.` 
echo                                        -...+so-:.......`````````.......:.+/d..... 
echo                                        --..:ohdm.s..+../:../-..+-.-/`+:+mmoo.---` 
echo                                        `----.+:mmmsmN.sMy +Md.-Mm-yMsmmNo+----:.  
echo                                         `-----.y-:NyhNNhMhMmMmNNdNmoNh`o+.---:.   
echo                                           -----...s`-m-`hMy`:NM:`sy`:+.....-:.    
echo                                            ::----....-..-y.`.o+...-......-::      
echo                                          -oyyo/-----..................--:+syo-    
echo                                        .syyyy+-``.----...---.--...----.`-+yhyyo.  
echo                                       :yyy+-        `.....----....``       -+yyy: 
echo                                      :yo-                                     -oy:
echo                                      -                                           -
echo.                                     `  
echo.          
echo.
echo.                                
echo                                                          [x  ]
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.                                                                     
echo.
echo.
echo.
echo                                                            +.                     
echo                                                           -yo                     
echo                                                           syy-                    
echo                                                          -hyys                    
echo                                                          shyyh.                   
echo                                                  `-:/++++s+:/oo+++//:.`           
echo                                              :osyyyhyyyo:..``.-+syyyyyhys+.       
echo                                             oh+hdhyyys/-.`````.-:+yyyhddosh.      
echo                                          ``:oy/sdohs/:o.```````.:+:oyssy/os+.`    
echo                                         .```..---/:--...```````...--:/---..`````  
echo                                        .```//-......```````````````.......-o.``.` 
echo                                        -...+so-:.......`````````.......:.+/d..... 
echo                                        --..:ohdm.s..+../:../-..+-.-/`+:+mmoo.---` 
echo                                        `----.+:mmmsmN.sMy +Md.-Mm-yMsmmNo+----:.  
echo                                         `-----.y-:NyhNNhMhMmMmNNdNmoNh`o+.---:.   
echo                                           -----...s`-m-`hMy`:NM:`sy`:+.....-:.    
echo                                            ::----....-..-y.`.o+...-......-::      
echo                                          -oyyo/-----..................--:+syo-    
echo                                        .syyyy+-``.----...---.--...----.`-+yhyyo.  
echo                                       :yyy+-        `.....----....``       -+yyy: 
echo                                      :yo-                                     -oy:
echo                                      -                                           -
echo.                                     `  
echo.
echo.          
echo.                                
echo                                                          [xx ]
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.                                                                     
echo.
echo.
echo.
echo                                                            +.                     
echo                                                           -yo                     
echo                                                           syy-                    
echo                                                          -hyys                    
echo                                                          shyyh.                   
echo                                                  `-:/++++s+:/oo+++//:.`           
echo                                              :osyyyhyyyo:..``.-+syyyyyhys+.       
echo                                             oh+hdhyyys/-.`````.-:+yyyhddosh.      
echo                                          ``:oy/sdohs/:o.```````.:+:oyssy/os+.`    
echo                                         .```..---/:--...```````...--:/---..`````  
echo                                        .```//-......```````````````.......-o.``.` 
echo                                        -...+so-:.......`````````.......:.+/d..... 
echo                                        --..:ohdm.s..+../:../-..+-.-/`+:+mmoo.---` 
echo                                        `----.+:mmmsmN.sMy +Md.-Mm-yMsmmNo+----:.  
echo                                         `-----.y-:NyhNNhMhMmMmNNdNmoNh`o+.---:.   
echo                                           -----...s`-m-`hMy`:NM:`sy`:+.....-:.    
echo                                            ::----....-..-y.`.o+...-......-::      
echo                                          -oyyo/-----..................--:+syo-    
echo                                        .syyyy+-``.----...---.--...----.`-+yhyyo.  
echo                                       :yyy+-        `.....----....``       -+yyy: 
echo                                      :yo-                                     -oy:
echo                                      -                                           -
echo.                                     `  
echo.
echo.          
echo.                                
echo                                                          [xxx]
ping localhost -n 2 >nul
cls
 
goto menulc1
 
:menulc1
cls
echo.
echo  KARIM CLIENT [@HansyNV]
echo.
echo  [1] - OP REGEDIT
echo.
echo  [2] - OP MISPLACE
echo.
echo  [3] - OP HITS DELAY
echo.
echo  [4] - CONNECTION BOOST
echo.
echo  [5] - this is "clean all temp files"
echo.  in id7mgh Tool (bypass ss)
echo  [6] - CONTACT
echo.
echo  [7] - back to id7mgh Tool
echo.
set /p opcion=Escribe el numero de la opcion deseada )
if %opcion%==1 goto 1Kari
if %opcion%==2 goto 2Kari
if %opcion%==3 goto 3Kari
if %opcion%==4 goto 4Kari
if %opcion%==6 goto 6Kari
if %opcion%==7 goto 7Kari
goto menulc1
 
 
:1Kari
cls
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPDelAckTicks" /d "0" /t REG_DWORD /f
)
cls
goto menulc1
 
:2Kari
cls
netsh int tcp set global autotuninglevel=disabled
cls
echo Colocando reach.
ping localhost -n 2 >nul
echo.
echo Colocando reach..
ping localhost -n 2 >nul
echo.
echo Colocando reach...
ping localhost -n 2 >nul
echo.
echo Reach colocado!
ping localhost -n 2 >nul
cls
goto menulc1

:3Kari
cls
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
cls
goto menulc1
 
:4Kari
cls
netsh winsock reset catalog
netsh int tcp reset
netsh interface ip delete arpcache
netsh int tcp set global netdma=enabled
netsh int tcp set global dca=enabled
netsh int ipv4 set glob defaultcurhoplimit=64
netsh int ipv6 set glob defaultcurhoplimit=64
set supplemental congestionprovider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global fastopen=enabled
netsh interface tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=restricted
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global rsc=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global rss=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set supplemental template=custom icw=8,5
cls
goto menulc1



:6Kari
cls
start https://www.youtube.com/channel/UC94dvsUURoVMbR-BduuyrBg?view_as=subscriber
start https://twitter.com/KarimLUL
cls
goto menulc1
 
 
:7Kari
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.                                                                     
echo.
echo.
echo.
echo                                                            +.                     
echo                                                           -yo                     
echo                                                           syy-                    
echo                                                          -hyys                    
echo                                                          shyyh.                   
echo                                                  `-:/++++s+:/oo+++//:.`           
echo                                              :osyyyhyyyo:..``.-+syyyyyhys+.       
echo                                             oh+hdhyyys/-.`````.-:+yyyhddosh.      
echo                                          ``:oy/sdohs/:o.```````.:+:oyssy/os+.`    
echo                                         .```..---/:--...```````...--:/---..`````  
echo                                        .```//-......```````````````.......-o.``.` 
echo                                        -...+so-:.......`````````.......:.+/d..... 
echo                                        --..:ohdm.s..+../:../-..+-.-/`+:+mmoo.---` 
echo                                        `----.+:mmmsmN.sMy +Md.-Mm-yMsmmNo+----:.  
echo                                         `-----.y-:NyhNNhMhMmMmNNdNmoNh`o+.---:.   
echo                                           -----...s`-m-`hMy`:NM:`sy`:+.....-:.    
echo                                            ::----....-..-y.`.o+...-......-::      
echo                                          -oyyo/-----..................--:+syo-    
echo                                        .syyyy+-``.----...---.--...----.`-+yhyyo.  
echo                                       :yyy+-        `.....----....``       -+yyy: 
echo                                      :yo-                                     -oy:
echo                                      -                                           -
echo.                                     `  
echo.          
echo.
echo.                                
echo                                                          [B  ]
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.                                                                     
echo.
echo.
echo.
echo                                                            +.                     
echo                                                           -yo                     
echo                                                           syy-                    
echo                                                          -hyys                    
echo                                                          shyyh.                   
echo                                                  `-:/++++s+:/oo+++//:.`           
echo                                              :osyyyhyyyo:..``.-+syyyyyhys+.       
echo                                             oh+hdhyyys/-.`````.-:+yyyhddosh.      
echo                                          ``:oy/sdohs/:o.```````.:+:oyssy/os+.`    
echo                                         .```..---/:--...```````...--:/---..`````  
echo                                        .```//-......```````````````.......-o.``.` 
echo                                        -...+so-:.......`````````.......:.+/d..... 
echo                                        --..:ohdm.s..+../:../-..+-.-/`+:+mmoo.---` 
echo                                        `----.+:mmmsmN.sMy +Md.-Mm-yMsmmNo+----:.  
echo                                         `-----.y-:NyhNNhMhMmMmNNdNmoNh`o+.---:.   
echo                                           -----...s`-m-`hMy`:NM:`sy`:+.....-:.    
echo                                            ::----....-..-y.`.o+...-......-::      
echo                                          -oyyo/-----..................--:+syo-    
echo                                        .syyyy+-``.----...---.--...----.`-+yhyyo.  
echo                                       :yyy+-        `.....----....``       -+yyy: 
echo                                      :yo-                                     -oy:
echo                                      -                                           -
echo.                                     `  
echo.
echo.          
echo.                                
echo                                                          [BY ]
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.                                                                     
echo.
echo.
echo.
echo                                                            +.                     
echo                                                           -yo                     
echo                                                           syy-                    
echo                                                          -hyys                    
echo                                                          shyyh.                   
echo                                                  `-:/++++s+:/oo+++//:.`           
echo                                              :osyyyhyyyo:..``.-+syyyyyhys+.       
echo                                             oh+hdhyyys/-.`````.-:+yyyhddosh.      
echo                                          ``:oy/sdohs/:o.```````.:+:oyssy/os+.`    
echo                                         .```..---/:--...```````...--:/---..`````  
echo                                        .```//-......```````````````.......-o.``.` 
echo                                        -...+so-:.......`````````.......:.+/d..... 
echo                                        --..:ohdm.s..+../:../-..+-.-/`+:+mmoo.---` 
echo                                        `----.+:mmmsmN.sMy +Md.-Mm-yMsmmNo+----:.  
echo                                         `-----.y-:NyhNNhMhMmMmNNdNmoNh`o+.---:.   
echo                                           -----...s`-m-`hMy`:NM:`sy`:+.....-:.    
echo                                            ::----....-..-y.`.o+...-......-::      
echo                                          -oyyo/-----..................--:+syo-    
echo                                        .syyyy+-``.----...---.--...----.`-+yhyyo.  
echo                                       :yyy+-        `.....----....``       -+yyy: 
echo                                      :yo-                                     -oy:
echo                                      -                                           -
echo.                                     `  
echo.
echo.          
echo.                                
echo                                                          [BYE]
ping localhost -n 2 >nul
cls
goto reghub

































































:HansyEXITO
mode con: cols=120 lines=30
title RegeditNV 2.0 %cracked%
color 5 
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                                                                                                                                                                                                                            
echo.                                                  
echo                                            `::                          `/-`        
echo                                        .+yNMMMo`       :      :        /NMMMdo-     
echo                                     `omMMMMMMMMNy/.    Ny`--`ym    `:sNMMMMMMMMm+`  
echo                                   `yMMMMMMMMMMMMMMMNmdhMMMMMMMMdhdNMMMMMMMMMMMMMMNo`
echo                                   ://oydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhs+///
echo                                         `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      
echo                                           `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`        
echo                                             yMMNmmNMMMMMMMMMMMMMMMMNmmmMMs          
echo                                              .     `:sNMMMMMMMMmo-`     `           
echo                                                        +NMMMMm/                     
echo                                                         `hMMy`                      
echo                                                           hs                        
echo                                                           `               
echo.      
echo.
echo.
echo                                                         [x  ]
echo.                               
echo.                                                      
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                                                                                                                                                                                                                            
echo.                                                  
echo                                            `::                          `/-`        
echo                                        .+yNMMMo`       :      :        /NMMMdo-     
echo                                     `omMMMMMMMMNy/.    Ny`--`ym    `:sNMMMMMMMMm+`  
echo                                   `yMMMMMMMMMMMMMMMNmdhMMMMMMMMdhdNMMMMMMMMMMMMMMNo`
echo                                   ://oydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhs+///
echo                                         `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      
echo                                           `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`        
echo                                             yMMNmmNMMMMMMMMMMMMMMMMNmmmMMs          
echo                                              .     `:sNMMMMMMMMmo-`     `           
echo                                                        +NMMMMm/                     
echo                                                         `hMMy`                      
echo                                                           hs                        
echo                                                           `               
echo.      
echo.
echo.
echo                                                         [xx ]
echo.                               
echo.                                                      
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                                                                                                                                                                                                                            
echo.                                                  
echo                                            `::                          `/-`        
echo                                        .+yNMMMo`       :      :        /NMMMdo-     
echo                                     `omMMMMMMMMNy/.    Ny`--`ym    `:sNMMMMMMMMm+`  
echo                                   `yMMMMMMMMMMMMMMMNmdhMMMMMMMMdhdNMMMMMMMMMMMMMMNo`
echo                                   ://oydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhs+///
echo                                         `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      
echo                                           `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`        
echo                                             yMMNmmNMMMMMMMMMMMMMMMMNmmmMMs          
echo                                              .     `:sNMMMMMMMMmo-`     `           
echo                                                        +NMMMMm/                     
echo                                                         `hMMy`                      
echo                                                           hs                        
echo                                                           `               
echo.      
echo.
echo.
echo                                                         [xxx]
echo.                               
echo.                                                      
ping localhost -n 2 >nul
cls
 
goto menulc
 
:menulc
cls
:nomames
echo.
echo                                                   [HANSY CLIENT V2]
echo.
echo                                                  [1] - NEW REGEDIT
echo.
echo                                                  [2] - NAGLE REGEDIT (Recomendado)
echo.
echo                                                  [3] - CMD 
echo.
echo                                                  [4] - DNS
echo.
echo                                                  [5] - NEW FAST PC (FPS METHOD)
echo.
echo                                                  [6] - back to id7mgh Tool
echo.
echo                                                  [7] - ANTIGUO CLIENTE
echo.
set /p opcion=.                                                [X] - OPCION DESEADA=
if %opcion%==1 goto 1Hansy
if %opcion%==2 goto 2Hansy
if %opcion%==3 goto 3Hansy
if %opcion%==4 goto 4Hansy
if %opcion%==5 goto 5Hansy
if %opcion%==6 goto 6Hansy
if %opcion%==7 goto 7Hansy
cls
goto nomames

 
 
:1Hansy
cls
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPDelAckTicks" /d "0" /t REG_DWORD /f
)
cls
goto menulc

:2Hansy
cls
REG ADD HKLM\SOFTWARE\Microsoft\MSMQ\Parameters /v TCPNoDelay /t REG_DWORD /d 1 /f
REG ADD HKLM\SOFTWARE\Microsoft\MSMQ\Parameters /v TcpDelAckTicks /t REG_DWORD /d 0 /f
)
cls
goto menulc
 
:3Hansy
start http://www.mediafire.com/file/bvoljitzid6ltvz/HansyCMD.rar/file
cls
goto menulc
 
:4Hansy
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                                             :::::::::       ::::    :::       :::::::: 
echo                                            :+:    :+:      :+:+:   :+:      :+:    :+: 
echo                                           +:+    +:+      :+:+:+  +:+      +:+         
echo                                          +#+    +:+      +#+ +:+ +#+      +#++:++#++   
echo                                         +#+    +#+      +#+  +#+#+#             +#+    
echo                                        #+#    #+#      #+#   #+#+#      #+#    #+#     
echo                                       #########       ###    ####       ######## 
echo.
echo.
echo                                                  8.8.8.8   x   1.1.1.1
echo                                                  8.8.4.4   x   1.0.0.1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause     
cls
goto menulc
 
:5Hansy
start https://www.mediafire.com/file/jydvwjvujrl58d8/NEWFASTPC.rar/file
cls
goto menulc
 
:6Hansy
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                                                                                                                                                                                                                            
echo.                                                  
echo                                            `::                          `/-`        
echo                                        .+yNMMMo`       :      :        /NMMMdo-     
echo                                     `omMMMMMMMMNy/.    Ny`--`ym    `:sNMMMMMMMMm+`  
echo                                   `yMMMMMMMMMMMMMMMNmdhMMMMMMMMdhdNMMMMMMMMMMMMMMNo`
echo                                   ://oydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhs+///
echo                                         `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      
echo                                           `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`        
echo                                             yMMNmmNMMMMMMMMMMMMMMMMNmmmMMs          
echo                                              .     `:sNMMMMMMMMmo-`     `           
echo                                                        +NMMMMm/                     
echo                                                         `hMMy`                      
echo                                                           hs                        
echo                                                           `               
echo.      
echo.
echo.
echo                                                        [Closing]
echo                                                          [.  ]   
echo.                               
echo.                                                      
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                                                                                                                                                                                                                            
echo.                                                  
echo                                            `::                          `/-`        
echo                                        .+yNMMMo`       :      :        /NMMMdo-     
echo                                     `omMMMMMMMMNy/.    Ny`--`ym    `:sNMMMMMMMMm+`  
echo                                   `yMMMMMMMMMMMMMMMNmdhMMMMMMMMdhdNMMMMMMMMMMMMMMNo`
echo                                   ://oydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhs+///
echo                                         `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      
echo                                           `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`        
echo                                             yMMNmmNMMMMMMMMMMMMMMMMNmmmMMs          
echo                                              .     `:sNMMMMMMMMmo-`     `           
echo                                                        +NMMMMm/                     
echo                                                         `hMMy`                      
echo                                                           hs                        
echo                                                           `               
echo.      
echo.
echo.
echo                                                        [Closing]
echo                                                          [.. ]   
echo.                               
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                                                                                                                                                                                                                            
echo.                                                  
echo                                            `::                          `/-`        
echo                                        .+yNMMMo`       :      :        /NMMMdo-     
echo                                     `omMMMMMMMMNy/.    Ny`--`ym    `:sNMMMMMMMMm+`  
echo                                   `yMMMMMMMMMMMMMMMNmdhMMMMMMMMdhdNMMMMMMMMMMMMMMNo`
echo                                   ://oydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhs+///
echo                                         `+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+`      
echo                                           `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh`        
echo                                             yMMNmmNMMMMMMMMMMMMMMMMNmmmMMs          
echo                                              .     `:sNMMMMMMMMmo-`     `           
echo                                                        +NMMMMm/                     
echo                                                         `hMMy`                      
echo                                                           hs                        
echo                                                           `               
echo.      
echo.
echo.
echo                                                        [Closing]
echo                                                          [...]   
echo.                               
echo.
ping localhost -n 2 >nul 
goto reghub

:7Hansy
start https://www.youtube.com/watch?v=B_PS7UAfESQ
cls
goto menulc                        
























:hubid7mghreg1



mode con: cols=120 lines=30
cls
color 1
 echo/
 echo/                                                 
 echo/                                               .ssssss`          `ssssss-            
 echo/                                               -mdyyssoo-      -oossyydm:            
 echo/                                               -mh++++syo+:  :/oys++++hm:            
 echo/                                               .+oss++++oso++oso++++sso+.            
 echo/                                                 .ssoo+++oyhyo/+++ooss-              
 echo/                                                   `yyo+ohh+/+++++yy`                
 echo/                                         .----      `-hhh+/++++shd-`      ----.      
 echo/                                         sNNmd..` `./dy//++++ydy/yd/.` `..dmNNy      
 echo/                                         sNmhhNN- smy//++//hmo/++//ymy .NNdhmNy      
 echo/                                         ``-Nmyydmo/+++//hd--dd//+++/omdyymN:``      
 echo/                                           -NmyymNs++/+dd-.``.-ddo/++sNmyymN-        
 echo/                                           `.-mmhydmmmy..`    `..ymmmdyhmm:.`        
 echo/                                           .ssdhdmhhhddyy.    `yyddhhhmdhhys.        
 echo/                                         :ooyhdd+/yddmmddss..ssddmmddh/+ddhyoo/      
 echo/                                     +oooyhhhh++` :+++ommmN--NNdds+++/ `++hhhhyooo+  
 echo/                                     hNddddh++        .++++..++++.        /+hddddNd  
 echo/                                     hNdhmNh                                hNmhdNd  
 echo/                                     syyyyys                                oyyyyys 
 echo/
 echo/                                                        
 echo/
 echo/                                               welcome to id7mghREG V2.1
 echo/
 echo/
 echo/
 echo/
 echo/

 
 ping loceathost -w 1
cls




 
 
 
 
 
 

 
:hubid7mghreg
 color 4

echo/
echo/
echo/
echo/
echo/
echo                            /=-------------------------------------------------------=\
echo/                           #                  s - clear text                         #
echo/                           #                  0 - Better hit + BetterDelay v2.0      #
echo/                           #                  1 - REGEDIT                            #
echo/                           #                  2 - id7mgh mods                        #
echo/                           #     coding       3 - Network Interface Key Finder       #
echo/                           #       by         4 - cleaner (FPS) [disabled]           #
echo/                           #     id7mgh       5 - bits                               #
echo/                           #                  6 - Lower ping (LINK) [disabled]       #
echo/                           #                dns - DNS                                #
echo/                           #                  e - exit                               #
echo/                           #                                                         #
echo/                           #                                                         #
echo/                           #                                                         #
echo                            \=-------------------------------------------------------=/
echo/
 set /p var=.                           select Number: 
if '%var%' == '1' GOTO 1id7mghreg
if '%var%' == '0' GOTO 0id7mghreg
if '%var%' == '2' GOTO 2id7mghreg
if '%var%' == '3' GOTO 3id7mghreg
if '%var%' == '4' GOTO 4id7mghreg
if '%var%' == '5' GOTO 5id7mghreg
if '%var%' == '6' GOTO 6id7mghreg
if '%var%' == 'e' GOTO eid7mghreg
if '%var%' == 's' GOTO sid7mghreg
if '%var%' == 'hub' GOTO hubid7mghreg
if '%var%' == 'dns' GOTO dnsid7mghreg
if '%var%' == 'up' GOTO upid7mghreg
exit




:Dnsid7mghreg
color 2
cls
echo/
echo/
echo/
echo/
echo/
echo/
echo/
echo/
echo                                            :::::::::       ::::    :::       ::::::::
echo                                           :+:    :+:      :+:+:   :+:      :+:    :+:
echo                                          +:+    +:+      :+:+:+  +:+      +:+
echo                                         +#+    +:+      +#+ +:+ +#+      +#++:++#++
echo                                        +#+    +#+      +#+  +#+#+#             +#+
echo                                       #+#    #+#      #+#   #+#+#      #+#    #+#
echo                                      #########       ###    ####       ########
echo/
echo/
echo                                                 8.8.8.8   x   1.1.1.1
echo                                                 8.8.4.4   x   1.0.0.1
echo/
echo/
echo/
echo/
echo/
echo/
echo/
echo/
echo/
pause
cls
color 4
goto hubid7mghreg


:6id7mghreg
start https://www.youtube.com/watch?v=TzwI5SmmvbI&ab_channel=Adamx
CLS
goto hubid7mghreg

:3id7mghreg
setlocal
setlocal EnableDelayedExpansion
SET validInterfaces=%regBranch:\0\0=\0%
IF /I NOT "%validInterfaces:~-2%"=="\0" (
 SET validInterfaces=%validInterfaces%\0
)

@Echo Finding Interfaces
SET regBrnch=HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces
SET validInterfaces= 

FOR /F "tokens=1-8 delims=\" %%i IN ( '%Sys32%reg.exe Query %regBrnch%' ) DO (
 %Sys32%reg.exe QUERY %regBrnch%\%%p /v DhcpIPAddress
 IF !ERRORLEVEL! EQU 0 (
 @Echo adding %%p
 SET validInterfaces=!validInterfaces! %%p
 ) ELSE (
 @Echo Not Valid
 )
)
@Echo Found Interfaces at %validInterfaces% 
goto hubid7mghreg

:eid7mghreg
cls
color 6
 echo/
 echo/                                                 
 echo/                                              .ssssss`          `ssssss-            
 echo/                                              -mdyyssoo-      -oossyydm:            
 echo/                                              -mh++++syo+:  :/oys++++hm:            
 echo/                                              .+oss++++oso++oso++++sso+.            
 echo/                                                .ssoo+++oyhyo/+++ooss-              
 echo/                                                  `yyo+ohh+/+++++yy`                
 echo/                                        .----      `-hhh+/++++shd-`      ----.      
 echo/                                        sNNmd..` `./dy//++++ydy/yd/.` `..dmNNy      
 echo/                                        sNmhhNN- smy//++//hmo/++//ymy .NNdhmNy      
 echo/                                        ``-Nmyydmo/+++//hd--dd//+++/omdyymN:``      
 echo/                                          -NmyymNs++/+dd-.``.-ddo/++sNmyymN-        
 echo/                                          `.-mmhydmmmy..`    `..ymmmdyhmm:.`        
 echo/                                          .ssdhdmhhhddyy.    `yyddhhhmdhhys.        
 echo/                                        :ooyhdd+/yddmmddss..ssddmmddh/+ddhyoo/      
 echo/                                    +oooyhhhh++` :+++ommmN--NNdds+++/ `++hhhhyooo+  
 echo/                                    hNddddh++        .++++..++++.        /+hddddNd  
 echo/                                    hNdhmNh                                hNmhdNd  
 echo/                                    syyyyys                                oyyyyys 
 echo/
 echo/
 echo/                                                      B . Y . E
 ping loceathost -w 65

goto hub


puase

:5id7mghreg
:bitid7mghreg
color 70
ping 127.0.0.1 -n 5

sc query BITS | find /I "STATE" | find "STOPPED"
goto :startid7mghreg

:startid7mghreg
sc start BITS
goto :bit
echo
puase


:sid7mghreg
cls 
goto hubid7mghreg


:0id7mghreg
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPDelAckTicks" /d "0" /t REG_DWORD /f
Reg.exe add %%i /v "MTU" /d "1450" /t REG_DWORD /f
Reg.exe add %%i /v "MSS" /d "1410" /t REG_DWORD /f
Reg.exe add %%i /v "TcpWindowSize" /d "64240" /t REG_DWORD /f
)

sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"

ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh interface ip delete arpcache
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh winsock reset catalog
netsh int tcp set global rsc=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global rss=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set supplemental template=custom icw=100
CLS
goto hub
puase


:1id7mghreg

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxCmds" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxThreads" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "421527552" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnloadDll" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "512" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\wercplsupport" /v "start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Skype\Phone" /v "DisableVersionCheck" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\Skype.com" /v "https" /t REG_DWORD /d "4" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableThumbsDBOnNetworkFolders" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d "2" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "8" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "8" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBroker" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableThumbsDBOnNetworkFolders" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
CLS
goto hub
puase

:2id7mghreg
start http://www.mediafire.com/file/4b0ykfn00u00dd7/id7mgh+mods.rar/file
cls
goto hub







:learixfps
@echo off
shift /0
mode 128,33
color 9
title Learix FPS 2.0 %cracked%
cd %systemroot%\system32
call :IsAdmin
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

:menu
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Fps Tweaks "
call :ColorText 8 "                                              [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Remove Tweaks "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 3 "
call :ColorText 8 " ] " 
call :ColorText F " Updates "
call :ColorText 8 "                                                 [ "
call :ColorText B " 4 "
call :ColorText 8 " ] " 
call :ColorText F " Options "
echo.
echo.
echo.
call :ColorText 8 "                                                 [ X to back to id7mgh Tool ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto 1)
if /i "%choose%"=="2" (goto 2)
if /i "%choose%"=="3" (goto 3)
if /i "%choose%"=="4" (goto 4)
if /i "%choose%"=="X" (goto reghub)

:2
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Fps Regedit "
call :ColorText 8 "                                          [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Memory Optimizer "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 3 "
call :ColorText 8 " ] " 
call :ColorText F " Windows Booster "
call :ColorText 8 "                                      [ "
call :ColorText B " 4 "
call :ColorText 8 " ] " 
call :ColorText F " Service Disabler "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto B1)
if /i "%choose%"=="2" (goto B2)
if /i "%choose%"=="3" (goto B3)
if /i "%choose%"=="4" (goto B4)
if /i "%choose%"=="X" (goto menu)


:B1
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
cls
Reg.exe del "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
cls
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
cls
Reg.exe del "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
cls
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnlodelLL" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnlodelLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
cls
Reg.exe del "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
bcdedit /set useplatformclock false
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 2


:B2
cls
bcdedit /set IncreaseUserVA 0
cls
goto 2

:B3
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
cls
Reg.exe del "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
cls
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe del "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
cls
Reg.exe del "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe del "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
cls
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
cls
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnlodelLL" /t REG_DWORD /d "1" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnlodelLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe del "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe del "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
cls
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 2

:B4
cls
sc stop BITS
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start DsSvc
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS 
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "DcpSvc"
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
cls
goto 2


:3
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 08 "                         - "
call :ColorText 0B " Slightly Improved Menu "
echo.
echo.
call :ColorText 08 "                         - "
call :ColorText 0B " Added Options "
echo.
echo.
call :ColorText 08 "                         - "
call :ColorText 0B " Better Fps Improvements "
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="X" (goto menu)



:4
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Change Color  "
call :ColorText 8 "                                                    [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " About "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto ChangeColor)
if /i "%choose%"=="2" (goto About)
if /i "%choose%"=="X" (goto menu)


:ChangeColor
cls
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         The Available Colors are "
echo.
call :ColorText 1 "                         Blue " & call :ColorText 8 ", " & call :ColorText 3 " Aqua " & call :ColorText 8 ", " & call :ColorText C " Red " & call :ColorText 8 ", " & call :ColorText 5 " Purple " & call :ColorText 8 ", " & call :ColorText 6 " Yellow " & call :ColorText 8 ", " & call :ColorText F " White " & call :ColorText 8 " and " & call :ColorText 2 " Green "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="Blue" (goto Blue)
if /i "%choose%"=="Aqua" (goto Aqua)
if /i "%choose%"=="Red" (goto Red)
if /i "%choose%"=="Purple" (goto Purple)
if /i "%choose%"=="Yellow" (goto Yellow)
if /i "%choose%"=="White" (goto White)
if /i "%choose%"=="Green" (goto Green)
if /i "%choose%"=="X" (goto 4)

:Blue
cls
color 1
goto ChangeColor

:Aqua
cls
color 3
goto ChangeColor

:Red
cls
color 4
goto ChangeColor

:Purple
cls
color 5
goto ChangeColor

:Yellow
cls
color 6
goto ChangeColor

:White
cls
color F
goto ChangeColor

:Green
cls
color 2
goto ChangeColor

:About
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                                                          Learix FPS "
echo.
call :ColorText 8 "                                                          Version 2.0 "
echo.
echo.
call :ColorText 8 "                                                 Made By " & call :ColorText C " 481FPS " & call :ColorText 8 " [ 481FPS#0001 ] "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="X" (goto 4)



:1
cls
echo.
echo.
call :ColorText 08  "                                                              Version 2.0 "
echo.
echo.
echo."                                 _                             _            _____   ____    ____  
echo."                                | |       ___    __ _   _ __  (_) __  __   |  ___| |  _ \  / ___| 
echo."                                | |      / _ \  / _` | | '__| | | \ \/ /   | |_    | |_) | \___ \ 
echo."                                | |___  |  __/ | (_| | | |    | |  >  <    |  _|   |  __/   ___) |
echo."                                |_____|  \___|  \__,_| |_|    |_| /_/\_\   |_|     |_|     |____/ 
echo.                                                                                               
echo. 
call :ColorText 08 "                         _________________________________________________________________________________"
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 1 "
call :ColorText 8 " ] " 
call :ColorText F " Cleaner "
call :ColorText 8 "                                                  [ "
call :ColorText B " 2 "
call :ColorText 8 " ] " 
call :ColorText F " Game Booster "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 3 "
call :ColorText 8 " ] " 
call :ColorText F " Service Disabler "
call :ColorText 8 "                                         [ "
call :ColorText B " 4 "
call :ColorText 8 " ] " 
call :ColorText F " Fps Regedit "
echo.
echo.
echo.
call :ColorText 8 "                         [ "
call :ColorText B " 5 "
call :ColorText 8 " ] " 
call :ColorText F " Memory Optimizer "
call :ColorText 8 "                                         [ "
call :ColorText B " 6 "
call :ColorText 8 " ] " 
call :ColorText F " Windows Booster "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ "
call :ColorText B " 7 "
call :ColorText 8 " ] " 
call :ColorText F " Debloat "
echo.
echo.
echo.
call :ColorText 8 "                                                        [ X to go Back ]"
echo.
echo.
set /p choose="> "

if /i "%choose%"=="1" (goto A1)
if /i "%choose%"=="2" (goto A2)
if /i "%choose%"=="3" (goto A3)
if /i "%choose%"=="4" (goto A4)
if /i "%choose%"=="5" (goto A5)
if /i "%choose%"=="6" (goto A6)
if /i "%choose%"=="7" (goto A7)
if /i "%choose%"=="X" (goto menu)

:A1
cls
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
cls
goto 1

:A2
cls
wmic process where name="javaw.exe" CALL setpriority "realtime"
wmic process where name="svchost.exe" CALL setpriority "realtime"
cls
goto 1

:A3
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
cls
goto 1

:A4
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnloadDLL" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 1

:A5
cls
sc stop BITS
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start DsSvc
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS 
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "DcpSvc"
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
cls
goto 1


:A6
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnloadDLL" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 1

:A7
cls
PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
REM PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"
cls
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
cls
taskkill /f /im explorer.exe
start explorer.exe
cls
goto 1













@echo off

:guilc
title LCproxy
mode con: cols=59 lines=13
cls
echo [40;37m/=-------------------------------------------------------=\
echo #                  1 - Fix Hosts Error                    #
echo #                  2 - Install                            #
echo #     LCproxy      3 - Uninstall LCProxy                  #
echo #                  4 - Enable/Disable Antivirus           #
echo #                  5 - Cant Select / See Cosmetics        #
echo #                  6 - Fix Access Is Denied               #
echo #                  x - exit                               #
echo #       [40;31m*warning some of the Feature restart ur pc*[40;37m       #
echo \=-------------------------------------------------------=/
echo\
set /p op=.  select Number: 
if "%op%"=="1" goto hostsfixlc
if "%op%"=="2" goto installlcplc
if "%op%"=="3" goto uninstalllcplc
if "%op%"=="4" goto avguilc
if "%op%"=="5" goto cosmeticsfixlc
if "%op%"=="6" goto accessdeniedfixlc
if "%op%"=="x" exit 

echo Please enter a valid option & timeout /t 5 >nul & goto gui


goto guilc
:hostsfixlc
cls
echo Fixing Hosts Error
del /f C:\Windows\System32\drivers\etc\hosts
powershell -Command "Invoke-WebRequest https://assets.lunarproxy.me/hosts -Outfile C:\Windows\System32\drivers\etc\hosts"
echo Step 1/2 Done
ping localhost -n 2 >nul
cls
echo Step 2/2 Pending
echo To finsih fixing the error we will need to restart your computer! Restarting in 10 seconds!
ping localhost -n 2 >nul
echo After the restart is done run the LCPInstaller.exe again!
ping localhost -n 7 >nul
echo 8 more seconds then pc restart spooookyyy
ping localhost -n 8 >nul
echo Restarting...
shutdown -t 0 -r -f
cls
goto guilc

:installlcplc
cls
echo Installing LCProxy...
powershell -Command "Invoke-WebRequest https://assets.lunarproxy.me/hosts -Outfile C:\Windows\System32\drivers\etc\hosts"
echo 194.163.177.249 assetserver.lunarclientprod.com >> "C:\Windows\System32\drivers\etc\hosts"
echo Done you now may launch Lunar Client
ping localhost -n 3.5 >nul
cls
goto guilc

:uninstalllcplc
cls
set "HostsFile=%SystemRoot%\System32\drivers\etc\hosts"
%SystemRoot%\System32\attrib.exe -r "%HostsFile%"
%SystemRoot%\System32\findstr.exe /I /R /V "194.163.177.249 assetserver.lunarclientprod.com ^$" "%HostsFile%" >"%TEMP%\%~n0.tmp"
move /Y "%TEMP%\%~n0.tmp" "%HostsFile%"
if errorlevel 1 del "%TEMP%\%~n0.tmp
ping localhost -n 2 >nul
cls
echo Uninstalling LCProxy...
ping localhost -n 2 >nul
cls
ECHO Successfully uninstalled LCProxy!
ping localhost -n 2 >nul
cls
ECHO Please wait 5 - 10 seconds for your cosmetics to get removed fully!
ping localhost -n 3.5 >nul
cls
goto guilc

:avguilc
mode con: cols=59 lines=9
cls
echo /=-------------------------------------------------------=\
echo #                  1 - Disable Windows Defender           #
echo #      LCproxy     2 - Enable Windows Defender            #
echo #                  3 - Main Menu                          #
echo #                                                         #
echo \=-------------------------------------------------------=/
echo/
set /p op=.  select Number: 
if "%op%"=="1" goto disableav
if "%op%"=="2" goto enableav
if "%op%"=="3" goto gui

echo Please enter a valid option & timeout /t 5 >nul & goto gui

cls
goto avguilc

:disableavlc
cls
echo Disabling Windows Defender
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "1" /f
cls
echo Successfully Disabled
ping localhost -n 5 >nul
cls
echo Restarting...
ping localhost -n 2 >nul
shutdown -t 0 -r -f
cls
goto guilc

:enableavlc
cls
echo Enabling Windows Defender
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t "REG_DWORD" /d "0" /f
cls
echo Successfully Enabled
ping localhost -n 5 >nul
echo Restarting...
ping localhost -n 2 >nul
shutdown -t 0 -r -f
cls
goto guilc

:cosmeticsfixlc
cls
echo Fixing Cosmetics...
echo 194.163.177.249 assetserver.lunarclientprod.com >> "C:\Windows\System32\drivers\etc\hosts"
ping localhost -n 4 >nul
echo Successfully Downloaded New Hosts File!
ping localhost -n 2 >nul
cls
echo Closing Minecraft...
tasklist /fi "ImageName eq javaw.exe" /fo csv 2>NUL | find /I "javaw.exe">NUL
if "%ERRORLEVEL%"=="0" taskkill /f /im javaw.exe
cls
echo Done.
ping localhost -n 2 >nul
cls
echo Please Re-Launch Lunar Client!
ping localhost -n 5 >nul
cls
goto guilc

:installlcp2lc
cls
echo Installing LCProxy...
powershell -Command "Invoke-WebRequest https://assets.lunarproxy.me/hosts -Outfile C:\Windows\System32\drivers\etc\hosts"
echo 194.163.177.249 assetserver.lunarclientprod.com >> "C:\Windows\System32\drivers\etc\hosts"
ping localhost -n 5 >nul
echo Successfully fixed error
ping localhost -n 5 >nul
cls
echo Step 2/2 Done you may now launch Lunar Client
ping localhost -n 5 >nul
cls
goto guilc
:accessdeniedfixlc
cls
echo Fixing Access Is Denied...
cls
cacls c:\Windows\System32\drivers\etc\hosts /g Administrators:f
echo Step 1/2 Done
ping localhost -n 3 >nul
cls
goto installlcp2lc












































