#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -larthF'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias df='df -h'
alias du='du -h'
alias cal='cal -m'
alias netctl='sudo netctl'
alias byt='netctl stop-all; netctl start byt'
alias ui='netctl stop-all; netctl start ui'
alias hoblipilka='netctl stop-all; netctl start hoblipilka'
alias eduroam='netctl stop-all; netctl start eduroam'
alias intrak='netctl stop-all; netctl start intrak'
alias protostar='sudo qemu-system-x86_64 -cdrom /home/pege/Downloads/exploit-exercises-protostar-2.iso -m 1G -net tap -net nic'

alias cog='sshfs gergel@cogsci.fmph.uniba.sk:. /mnt/cogsci'
alias ucog='fusermount3 -u /mnt/cogsci'

alias rpi='sshfs pege@158.195.214.131:. /mnt/rpi'
#alias rpi='sshfs pege@192.168.0.101:. /mnt/rpi'
alias urpi='fusermount3 -u /mnt/rpi'

alias mon2='xrandr --output DP-2 --auto --left-of eDP-1'
alias monr='xrandr -s 0'

PS1='[\u@\h \W]\$ '
export PATH=/home/pege/.local/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-10-openjdk/
#export PYTHONPATH="/home/pege/.local/lib/python3.5/site-packages:/home/pege/.local/lib/python3.6/site-packages:/usr/lib/python3.5/site-packages:/usr/lib/python3.6/site-packages"
