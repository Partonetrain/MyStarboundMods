@echo off
set "source_dir=H:\Development\Starbound\Mods\MyStarboundMods\duplicatorunification"
set "destination_dir=G:\OpenStarbound\mods"

rd /S "%destination_dir%\deployed"
xcopy "%source_dir%" "%destination_dir%\deployed" /E /I /H /K /Y