#! /bin/bash

set +e

systemctl --user unmask xdg-desktop-portal-wlr &

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots

/usr/lib/xdg-desktop-portal-wlr &
dunst &
/usr/lib/xfce-polkit/xfce-polkit &
wl-clip-persist --clipboard regular --reconnect-tries 0 &
wl-paste --type text --watch cliphist store & 
swww-daemon
waybar
