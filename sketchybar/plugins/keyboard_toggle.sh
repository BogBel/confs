#!/bin/bash

# Get the current input source
# Define your input sources
# current_source=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | awk -F' = ' '/KeyboardLayout ID/{getline; print $2}' | tr -d '";' | xargs)

# Debug: Print out the current source
# echo "Current source: '$current_source'"

# Define your input sources
# US_SOURCE="ABC"
# UKRAINE_SOURCE="Ukrainian"

# Toggle popup visibility
# sketchybar -m --toggle popup.keyboard
# echo "toggle"
#
# MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')
# if [[ $MIC_VOLUME -eq 0 ]]; then
#   # osascript -e 'set volume input volume 25'
#   sketchybar -m --set keyboard label="AAA"
# elif [[ $MIC_VOLUME -gt 0 ]]; then
#   # osascript -e 'set volume input volume 0'
#   sketchybar -m --set keyboard label="HOHOH"
# fi
# sketchybar -m --toggle popup.keyboard
# # Toggle between input sources
# if [ "$current_source" = "$US_SOURCE" ]; then
#     # Change to Ukrainian
#     osascript -e 'tell application "System Events" to tell process "SystemUIServer" to key code 49 using {control down, option down}'
# elif [ "$current_source" = "$UKRAINE_SOURCE" ]; then
#     # Change to US
#     osascript -e 'tell application "System Events" to tell process "SystemUIServer" to key code 49 using {control down, option down}'
# else
#     # Default action if neither US nor Ukrainian is the current layout
#     # For example, switch to US. Modify this part as needed.
#     osascript -e 'tell application "System Events" to tell process "SystemUIServer" to key code 49 using {control down, option down}'
# fi
