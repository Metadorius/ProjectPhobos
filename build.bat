@echo off
set PATH=C:\win-builds-patch-32\bin
gmake STATS=1 clean
gmake
pause