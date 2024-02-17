#!/bin/bash
#
# # this is jank and ugly, I know
LAYOUT="$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep "KeyboardLayout Name" | cut -c 33- | rev | cut -c 2- | rev)"
#
# # specify short layouts individually.
#
case "$LAYOUT" in
    "\"U.S.\"" | "ABC") SHORT_LAYOUT="US";;
    "\"Ukrainian-PC\"") SHORT_LAYOUT="UA";;
    *) SHORT_LAYOUT="$LAYOUT";; # Replace "한" with "Default" or any other default value you prefer
esac
sketchybar --set keyboard label="$SHORT_LAYOUT"
