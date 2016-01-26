#!/bin/sh
WINE=${WINE:-wine}
WINEPREFIX=${WINEPREFIX:-$HOME/.wine}
export WINEPREFIX
export WINEDEBUG=-all
WINEKIT="c:\winekit"
WDKROOT="$WINEKIT\WinDDK\7600.16385.1"
export WINEPATH="c:\windows;c:\windows\system32;$WDKROOT\bin\x86\amd64"
export INCLUDE="$WDKROOT\inc\api;$WDKROOT\inc\ddk;$WDKROOT\inc\crt"
export LIB="$WDKROOT\lib\wlh\amd64"
$WINE cl.exe $@
