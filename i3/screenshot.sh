#!/bin/bash

# win_id=`xwininfo | grep -i "Window id" | cut -d' ' -f4`
# import screenshot.png
maim -s | xclip -selection clipboard -t image/png -i
# gpicview screenshot.png
