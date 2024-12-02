#!/bin/env bash

# Get battery status and percentage
battery_status=$(cat /sys/class/power_supply/BAT0/status)
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

# Set icon based on battery level and charging status
if [ "$battery_status" = "Charging" ]; then
  icon="󰂄" # Charging icon
else
  if [ "$battery_level" -eq 100 ]; then
    icon="󰁹"
  elif [ "$battery_level" -ge 90 ]; then
    icon="󰂂"
  elif [ "$battery_level" -ge 80 ]; then
    icon="󰂁"
  elif [ "$battery_level" -ge 70 ]; then
    icon="󰂀"
  elif [ "$battery_level" -ge 60 ]; then
    icon="󰁿"
  elif [ "$battery_level" -ge 50 ]; then
    icon="󰁾"
  elif [ "$battery_level" -ge 40 ]; then
    icon="󰁽"
  elif [ "$battery_level" -ge 30 ]; then
    icon="󰁼"
  elif [ "$battery_level" -ge 20 ]; then
    icon="󰁻"
  else
    icon="󰁺"
  fi
fi

# Output for dwmblocks
echo "$icon $battery_level"
