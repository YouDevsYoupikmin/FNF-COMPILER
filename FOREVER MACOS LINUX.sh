#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
#
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download/version/4.2.5/
# yoooo it's me again i stole this from psychengine but the setup is not accurate for macOS cus i can't test it. Yes i got a intel pentium i can't test.
# updates here : https://github.com/YouDevsYoupikmin/FNF-COMPILER/

haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
haxelib install flixel-tools
haxelib run flixel-tools setup
haxelib install polymod 1.7.0
haxelib install newgrounds
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib install hxcpp-debug-server