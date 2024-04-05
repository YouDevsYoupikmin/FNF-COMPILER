#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
# PSYCHENGINE SETUP
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download/version/4.2.5/
# yoooo it's me again i stole this from psychengine but the setup is not accurate for macOS cus i can't test it. Yes i got a intel pentium i can't test.
# updates here : https://github.com/YouDevsYoupikmin/FNF-COMPILER/

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
haxelib install newgrounds
haxelib install hscript
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec.git
haxelib install polymod 1.7.0
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