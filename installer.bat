@echo off

title FNF COMPILER SETUP 1.0 - dumb installer by youpikmin

echo Welcome to FNF COMPILER !
echo.
echo Original setup by Tuxsuper on GameBanana
echo ----------------------------------------------------------
echo Press Any key to continue.

pause >nul
goto GitChoice

:GitChoice
title FNF COMPILER SETUP 1.0 - GIT SCM
cls
echo You need GIT-SCM for compiling, do you want to download it? (??? MO)
echo [Y/N]
set /p s=%string1%: 
if %s%==Y goto GitSetup
if %s%==N goto EngineChoice
if %s%==y goto GitSetup
if %s%==n goto EngineChoice

:GitSetup
cls
title FNF COMPILER SETUP 1.0 - DOWNLOADING GIT
echo Downloading GIT-SCM...
curl -L -# -O https://github.com/git-for-windows/git/releases/download/v2.38.1.windows.1/Git-2.38.1-64-bit.exe
Git-2.38.1-64-bit.exe
del Git-2.38.1-64-bit.exe
echo GIT SCM Has been installed successfully !
pause >nul
echo Press any key to continue.

goto EngineChoice

:EngineChoice
title FNF COMPILER SETUP 1.0 - ENGINE CHOICE
cls
echo Which engine do you want to compile?
echo.
echo Psych Engine / OS Engine (1)
echo Kade Engine / Vanilla Engine (2)
echo Forever Engine / IzzyEngine (3)
echo (more engines soon)

set /p s=%string1%: 
if %s%==1 goto PsychSetup01
if %s%==2 goto KadeSetup01
if %s%==3 goto ForeverSetup01

pause >nul

:PsychSetup01
title FNF COMPILER SETUP 1.0 - PSYCH ENGINE SETUP
cls
echo Current engine : PSYCH / OS ENGINE
echo.
echo Haxe is requied for future steps. Do you want to install it?
echo [Y/N]

set /p s=%string1%:
if %s%==Y goto HaxePsych
if %s%==N goto HaxelibPsych
if %s%==y goto HaxePsych
if %s%==n goto HaxelibPsych

:KadeSetup01
title FNF COMPILER SETUP 1.0 - KADE ENGINE SETUP
cls
echo Current engine : KADE / Vanilla ENGINE
echo.
echo Haxe is requied for future steps. Do you want to install it?
echo [Y/N]

set /p s=%string1%:
if %s%==Y goto InstallHaxeKade
if %s%==N goto InstallHaxeLibsKade
if %s%==y goto InstallHaxeKade
if %s%==n goto InstallHaxeLibsKade

:ForeverSetup01
cls
title FNF COMPILER SETUP 1.0 - FOREVER ENGINE SETUP
echo Current Engine : Forever Engine
echo.
echo Haxe is requied for future steps. Do you want to install it?
echo [Y/N]

set /p s=%string1%:
if %s%==Y goto InstallHaxeForever
if %s%==N goto InstallHaxeLibsForever
if %s%==y goto InstallHaxeForever
if %s%==n goto InstallHaxeLibsForever

:InstallHaxeForever
cls
title FNF COMPILER SETUP 1.0 - Downloading HAXE for FOREVER ENGINE
echo Downloading Haxe please wait...
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.2.5/haxe-4.2.5-win64.exe
haxe-4.2.5-win64.exe
echo ----------------------------------------------------------
echo note : sometimes the executable file can't be deleted, delete it manually
del haxe-4.2.5-win64.exe
echo Deleting setup file...
echo.
pause >nul
echo Haxe Installed successfully ! *i guess...*
echo Press any key to continue.
goto InstallHaxeLibsForever

:InstallHaxeLibsForever
cls
title FNF COMPILER SETUP 1.0 - Downloading HAXE LIBRAIRIES for FOREVER ENGINE
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
haxelib install flixel-tools
haxelib run flixel-tools setup
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib install hxcpp-debug-server

haxelib list
echo Haxe librairies successfully installed !
echo.
echo Press any key to continue.
pause >nul
goto VSCommunity


:HaxePsych
title FNF COMPILER SETUP 1.0 - Downloading HAXE for PSYCH ENGINE
cls
echo Downloading Haxe please wait...
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.2.5/haxe-4.2.5-win64.exe
haxe-4.2.5-win64.exe
echo ----------------------------------------------------------
echo note : sometimes the executable file can't be deleted, delete it manually
del haxe-4.2.5-win64.exe
echo Deleting setup file...
echo.
echo Haxe Installed successfully ! *i guess...*
echo Press any key to continue.

:InstallHaxeKade
cls
title FNF COMPILER 1.0 - Downloading Haxe for Kade Engine
curl -L -# -O https://github.com/HaxeFoundation/haxe/releases/download/4.1.5/haxe-4.1.5-win64.exe
haxe-4.1.5-win64.exe
del haxe-4.1.5-win64.exe

echo --
echo Installed Haxe 4.1.5. 
echo --
echo Press any key to continue.
pause >nul
goto InstallHaxeLibsKade


pause >nul

:HaxelibPsych
cls

title FNF COMPILER SETUP 1.0 - Haxelib for PsychEngine
echo Press any key to install the required Haxe libraries (500 MB).
echo -------------------------------------------------------------------------------
pause >nul
title FNF Automatic Build Environment Setup Script - Installing Haxe libraries
echo Installing haxelib libraries...
haxelib install lime 8.1.1
haxelib set lime 8.1.1
haxelib install openfl 9.3.0
haxelib set openfl 9.3.0
haxelib install flixel 4.11.0
haxelib set flixel 4.11.0
haxelib run lime setup flixel
haxelib run lime setup 
haxelib install flixel-tools
haxelib install flixel-ui
haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons
haxelib git flxanimate https://github.com/ShadowMario/flxanimate
haxelib install tjson
haxelib install hxjsonast
haxelib install hscript
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec.git
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit
haxelib git hscript-ex https://github.com/ianharrigan/hscript-ex
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib install hxcpp 4.2.1
haxelib set hxcpp 4.2.1
haxelib install hxcpp-debug-server
haxelib run lime setup
haxelib run lime setup flixel
haxelib run flixel-tools setup

haxelib list
echo Haxe librairies successfully installed !
echo.
echo Press any key to continue.
pause >nul
goto VSCommunity

:VSCommunity
cls
title FNF COMPILER SETUP 1.0 - VISUAL STUDIO CODE
echo You need Visual Studio for compiling. Do you want to download it?
echo [Y/N]

set /p s=%string1%:
if %s%==Y goto VSCommunitySetup
if %s%==N goto End
if %s%==y goto VSCommunitySetup
if %s%==n goto End

:VSCommunitySetup
cls
title FNF COMPILER SETUP 1.0 - DOWNLOADING VISUAL STUDIO CODE
echo Downloading Visual Studio...
curl -# -O https://download.visualstudio.microsoft.com/download/pr/3105fcfe-e771-41d6-9a1c-fc971e7d03a7/8eb13958dc429a6e6f7e0d6704d43a55f18d02a253608351b6bf6723ffdaf24e/vs_Community.exe
vs_Community.exe --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows10SDK.19041 -p --norestart

echo Done! File stocked on Users/%userName%/vs_Cummunity.exe
echo Press Any key.

goto End

:InstallHaxeLibsKade
cls
title FNF COMPILER 1.0 - Downloading haxelibs for kade engine
haxelib install flixel 4.0.0
haxelib install lime 7.9.0
haxelib install openfl
haxelib install flixel
haxelib install flixel-tools
haxelib install flixel-ui
haxelib install hscript
haxelib install flixel-addons
haxelib install actuate
haxelib run lime setup
haxelib run lime setup flixel
haxelib run flixel-tools setup
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
haxelib git faxe https://github.com/uhrobots/faxe
haxelib git polymod https://github.com/MasterEric/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git extension-webm https://github.com/KadeDev/extension-webm
lime rebuild extension-webm <ie. windows, macos, linux>
haxelib list
echo Haxe librairies successfully installed !
echo.
echo Press any key to continue.
pause >nul
goto VSCommunity

:End

cls
title FNF COMPILER 1.0 -- END
echo Now you can compile FNF from source code !
echo -------------------------------------------
echo Note : it's a beta program', Press Any key to exit and Check for updates here : link
echo.
echo Press any key to exit.