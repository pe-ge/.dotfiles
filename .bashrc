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

PS1='[\u@\h \W]\$ '
export PATH=/home/pege/.local/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
