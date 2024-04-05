#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
# KADE ENGINE SETUP
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download/version/4.2.5/
# yoooo it's me again i stole this from psychengine but the setup is not accurate for macOS cus i can't test it. Yes i got a intel pentium i can't test.
# updates here : https://github.com/YouDevsYoupikmin/FNF-COMPILER/

haxelib install flixel 4.11.0
haxelib install lime 7.9.0
haxelib install openfl 9.2.2
haxelib install flixel
haxelib install flixel-tools
haxelib install flixel-ui
haxelib install hscript
haxelib install flixel-addons
haxelib install actuate
haxelib install newgrounds 1.1.5
haxelib run lime setup
haxelib run lime setup flixel
haxelib run flixel-tools setup
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
haxelib git faxe https://github.com/uhrobots/faxe
haxelib install polymod 1.3.1
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git extension-webm https://github.com/KadeDev/extension-webm
lime rebuild extension-webm windows
haxelib list
echo Haxe librairies successfully installed !
echo.
echo Press any key to continue.
pause >nul