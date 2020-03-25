@echo off
set PATH=C:\win-builds-patch-32\bin
gmake STATS=1 clean
gmake dev=1
pause
copy Phobos.dll C:\ra2\0\Phobos.dll
CD /d C:\ra2\0
Syringe "../gamemd.exe" %* -SPAWN -NOLOGO -CD -WIN -LOG