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

PS1='[\u@\h \W]\$ '
export PATH=/home/pege/.local/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
