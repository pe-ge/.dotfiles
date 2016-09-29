brightness=`cat /sys/class/backlight/intel_backlight/brightness`
echo $((brightness+10)) | sudo tee /sys/class/backlight/intel_backlight/brightness 
