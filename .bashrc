#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

HISTSIZE=5000
HISTFILESIZE=100000

export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#/usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh 

export EDITOR=/usr/bin/vim
#export VISUAL=gvim

export TERM="xterm-256color"

#PATH=$HOME/appimages:$PATH
export PATH="$PATH:/home/alex/.dotnet/tools"


