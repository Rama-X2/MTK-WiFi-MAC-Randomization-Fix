#!/system/bin/sh
# MTK WiFi MAC Fix - Enhanced Version
# Author: Rama-X2
# License: GPL-3.0 (recommended)

LOGFILE=/data/local/tmp/mtk_wifi_fix.log

echo "===== MTK WiFi Fix Started =====" >> $LOGFILE
date >> $LOGFILE

sleep 10

# Disable MAC randomization properties
resetprop persist.sys.wifi.mac.randomization 0
resetprop persist.vendor.wifi.mac_randomization 0
resetprop persist.sys.wifi.mac_randomization 0

# Loop enforcement
while true; do
    if ip link show wlan0 >/dev/null 2>&1; then
        CURRENT_MAC=$(cat /sys/class/net/wlan0/address)

        echo "Current MAC: $CURRENT_MAC" >> $LOGFILE

        # Uncomment if forcing static MAC
        # ip link set wlan0 down
        # ip link set wlan0 address XX:XX:XX:XX:XX:XX
        # ip link set wlan0 up
    fi

    sleep 30
done
