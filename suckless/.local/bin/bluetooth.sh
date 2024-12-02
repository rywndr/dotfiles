#!/bin/env bash

# Function to get bluetooth status and output
Check if bluetooth service is running
bluetooth_status=$(systemctl is-active bluetooth)
if [ "$bluetooth_status" = "active" ]; then
  controller_status=$(bluetoothctl show | grep "Powered:" | cut -d " " -f 2)
  if [ "$controller_status" = "yes" ]; then
    # Check for connected devices
    connected_devices=$(bluetoothctl devices Connected | wc -l)
    if [ "$connected_devices" -gt 0 ]; then
      # Get the name of the first connected device
      device_name=$(bluetoothctl devices Connected | head -n 1 | cut -d ' ' -f 3-)
      icon="󰂱" # Connected icon
      output="$icon $device_name"
    else
      icon="󰂯" # Powered on but not connected
      output="$icon"
    fi
  else
    icon="󰂲" # Powered off
    output="$icon"
  fi
else
  icon="󰂲" # Service inactive
  output="$icon"
fi
echo "$output"
