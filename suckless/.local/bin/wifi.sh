#!/bin/env bash

# Get Wi-Fi information (interface might be different, use ip link to confirm)
interface="wlp0s12f0"
wifi_status=$(cat /sys/class/net/$interface/operstate)

# Set icon and status based on Wi-Fi connection
if [ "$wifi_status" = "up" ]; then
  # ssid=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2) # Get SSID of connected Wi-Fi
  icon="󰖩 wc" # Connected icon
  output="$icon"
else
  icon="󰖪 wd" # Disconnected icon
  output="$icon"
fi

# Output the status
echo "$output"

# add the below script to /etc/NetworkManager/dispatcher.d/90-dwmblocks-wifi to update the status of wifi in dwmblocks when wifi is connected or disconnected

#!/bin/env bash

# Send signal 3 (the signal number we defined in blocks.h) to dwmblocks
# pkill -RTMIN+3 dwmblocks
