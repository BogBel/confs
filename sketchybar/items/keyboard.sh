
#!/bin/bash

keyboard=(
    icon.drawing=off
    # label.font="$FONT:Semibold:14.0"
    script="$PLUGIN_DIR/keyboard.sh"
    click_script="$PLUGIN_DIR/keyboard_toggle.sh"
)

# Add a popup item under 'keyboard'
# sketchybar -m --add item us_layout popup.keyboard
# sketchybar -m --set us_layout label="US"
# sketchybar -m --add item ukraine_layout popup.keyboard
# sketchybar -m --set ukraine_layout label="Ukraine"
# Add the keyboard item with popup
sketchybar -m --add item keyboard right        \
           --set keyboard "${keyboard[@]}"  \
           --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
           --subscribe keyboard keyboard_change
