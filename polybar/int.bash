R=`ifconfig wlan0 | head -3 | tail -1 | grep UP`

if [ $? -eq 0 ]; then

    echo "wlan0 is up, bringing it down."

    ifdown wlan0

else

    echo "wlan0 is down, bringing it up"

    ifup wlan0

fi

