#!/bin/bash
layout=$(setxkbmap -query | grep layout | cut -d ' ' -f 6)
if [ "$layout" = "us" ]
then
    setxkbmap sk
else
    setxkbmap us
fi
