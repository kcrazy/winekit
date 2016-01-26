#!/bin/sh
WINE=${WINE:-wine}
WINEPREFIX=${WINEPREFIX:-$HOME/.wine}
export WINEPREFIX
export WINEDEBUG=-all
WINEKIT="c:\winekit"
WDKROOT="$WINEKIT\WinDDK\7600.16385.1"
WPSDK="$WINEKIT\Microsoft SDKs\Windows\v7.0"
export WINEPATH="c:\windows;c:\windows\system32;$WDKROOT\bin\x86\x86"
export INCLUDE="$WINEKIT\VC\include;$WPSDK\Include;$WDKROOT\inc\ddk"
export LIB="$WINEKIT\VC\lib;$WPSDK\Lib"
$WINE link.exe /LIBPATH:"$WDKROOT\lib\wlh\i386" $@
