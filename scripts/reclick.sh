read -r cx cy < <(xdotool getmouselocation | awk -F'[ :]' '{print $2 , $4}')
read -p "Move mouse to where you want to reclick and press ENTER"
read -r gx gy < <(xdotool getmouselocation | awk -F'[ :]' '{print $2 , $4}')
xdotool mousemove $cx $cy
read -p "Dely between clicks: " delay

while true
do
	read -r cx cy < <(xdotool getmouselocation | awk -F'[ :]' '{print $2 , $4}')
	xdotool mousemove $gx $gy
	xdotool click 1
	xdotool mousemove $cx $cy
	xdotool click 1
	sleep $delay
done
