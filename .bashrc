#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias vim=nvim
alias ls='ls --color=auto -larthF'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias df='df -h'
alias du='du -h'
alias cal='cal -m'
alias netctl='sudo netctl'
alias venv='source ~/python-venv/bin/activate'
alias flake8='flake8 --append-config ~/.config/flake8'

if [ -f $HOME/.bashrc_aliases ]; then
    . $HOME/.bashrc_aliases
fi

PS1='[\u@\h \W]\$ '
export VISUAL=nvim
export JAVA_HOME=/usr/lib/jvm/java-20-openjdk/
export PATH="/home/pege/.local/bin/":$PATH
#
