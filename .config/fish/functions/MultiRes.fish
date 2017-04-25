function MultiRes
	xrandr --newmode "1920x1080_59.90" 172.51 1920 2040 2248 2576 1080 1081 1084 1118 -Hsync +Vsync
xrandr --addmode Virtual1 1920x1080_59.90
xrandr --output Virtual1 --mode 1920x1080_59.90
xrandr --dpi 100
pkill polybar
polybar top&
end
