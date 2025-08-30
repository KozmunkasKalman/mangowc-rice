#! /bin/bash

if pgrep -x "wlsunset" > /dev/null
then
	killall wlsunset
else
	wlsunset -t 4000 -T 5000
fi