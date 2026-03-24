#!/bin/bash

# 1. Path to your wallpaper directory
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# 2. Temporary file to store the current position
STATE_FILE="/tmp/sway_wallpaper_index"

# 3. Gather all images into an array
shopt -s nullglob nocaseglob
WALLPAPERS=("$WALLPAPER_DIR"/*.{jpg,jpeg,png,svg})
shopt -u nullglob nocaseglob

# 4. Check if we actually found any wallpapers
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
    notify-send "Wallpaper script" "No images found in $WALLPAPER_DIR"
    exit 1
fi

# 5. Read the last used index (default to 0 if the file doesn't exist)
if [ -f "$STATE_FILE" ]; then
    INDEX=$(cat "$STATE_FILE")
else
    INDEX=0
fi

# 6. Calculate the next index (loops back to 0 when it reaches the end)
NEXT_INDEX=$(( (INDEX + 1) % ${#WALLPAPERS[@]} ))

# 7. Save the new index
echo "$NEXT_INDEX" > "$STATE_FILE"

# 8. Tell Sway to change the background
swaymsg output "*" bg "${WALLPAPERS[$NEXT_INDEX]}" fill
