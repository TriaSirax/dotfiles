xrandr --newmode "ultrawide60" 230.76  2560 2728 3000 3440  1080 1081 1084 1118  -HSync +Vsync
xrandr --addmode HDMI2 "ultrawide60"
systemctl --user import-environment DISPLAY
exec i3
