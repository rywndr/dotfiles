#!/bin/env bash
# Get the current volume and mute status using wpctl
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}' | cut -d '.' -f 1)
muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o '\[MUTED\]')

# Cap volume at 100%
if [ "$volume" -gt 100 ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 1.0
    volume=100
fi

# Set symbols based on volume level and mute status
if [ "$muted" = "[MUTED]" ]; then
    icon="󰝟 "  # Muted
    echo "$icon"
else
    if [ "$volume" -le 30 ]; then
        icon="󰕿 "  # Low Volume
    elif [ "$volume" -le 70 ]; then
        icon="󰖀 "  # Medium Volume
    else
        icon="󰕾 "  # High Volume
    fi
    echo "$icon$volume%"
fi
