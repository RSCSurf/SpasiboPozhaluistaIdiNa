@echo off

:: !IMPORTANT! Which maps to export. Can use "*" as a wildcard, for example "de_*,cs_*".
SET MAPS="surf_*"

:: !IMPORTANT! Directory to export to.
SET OUTPUT_DIR="SurfMaps6"

:: !IMPORTANT! Should be the root URL of where the exported files will be on your web server.
:: For example, if the output directory will be at "http://your-website.com/foo/exported", this
:: should be either "/foo/exported" or "http://your-website.com/foo/exported"
SET URL_PREFIX="https://raw.githubusercontent.com/RSCSurf/SurfMaps6/main"

:: Game install folder (should work for other Source games)
SET GAME_DIR="D:\SteamLibrary\steamapps\common\Counter-Strike Global Offensive\csgo"

:: Where to look for the specified maps, relative to the game install folder
SET MAPS_DIR="maps\maps6"

:: Extra options: --overwrite, --verbose, --untextured
SET OPTIONS="--verbose"

"bin\SourceUtils.WebExport.exe" export ^
    --maps %MAPS% ^
    --outdir %OUTPUT_DIR% ^
    --gamedir %GAME_DIR% ^
    --mapsdir %MAPS_DIR% ^
    --url-prefix %URL_PREFIX% ^
    %OPTIONS%
pause