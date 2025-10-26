@echo off
set "source_dir=H:\Development\Starbound\Mods\MyStarboundMods\chroniumchronicles"
set "destination_dir=G:\OpenStarbound\mods"

xcopy "%source_dir%" "%destination_dir%\deployed" /E /I /H /K /Y