#!/bin/bash

win_id=`xwininfo | grep -i "Window id" | cut -d' ' -f4`
import -window $win_id screenshot.png
gpicview screenshot.png
