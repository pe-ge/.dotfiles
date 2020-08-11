if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
else 
    export BROWSER=links
fi
export EDITOR=vim
export VISUAL=vim
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3 --shmlog-size=26214400
xset r rate 400 25

