#!/bin/bash
if mouse=$(lsusb | grep Genius)
then 
    /usr/bin/synclient TouchpadOff=1
else
    /usr/bin/synclient TouchpadOff=0
fi
