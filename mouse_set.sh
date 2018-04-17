#/bin/bash
#export DISPLAY=:0
export XAUTHORITY=/home/codex/.Xauthority
#xset m 1/2 1/2
#xset q

sh & xset -display :0 m 1/2 1/2
#MOUSE_ID=$(xinput | grep "Mouse" | awk '{gsub("id=", "", $9); print $9}')
#echo "MOUSE_ID : " $MOUSE_ID
#xinput --set-prop ${MOUSE_ID} "Device Accel Constant Deceleration" 0
#echo "SET MOUSE SPEED to 2.5 (faster 1 / slower 9)"
