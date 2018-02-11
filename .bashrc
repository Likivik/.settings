#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##### History
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
#####

export PS1="\[$(tput bold)\]\[\033[38;5;35m\]▶ [\[\033[38;5;197m\]\W\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;35m\]]\[$(tput sgr0)\] "
export LS_OPTIONS='--color=auto'
# To use your .dircolors do this:
# wget https://raw.github.com/likivik/Settings/master/.dircolors -O $HOME/.dircolors
eval $(dircolors -b $HOME/.dircolors)

##########################
#        Aliases         #
########################## 
### Makes ls colorful=)
alias ls='ls $LS_OPTIONS'
alias la='ls $LS_OPTIONS -a'
### In case of misspelling or laziness
alias cd..='cd ..'
alias ..='cd ..'
### I like seeing response
alias mkdir='mkdir -v'
### Make parent directories as needed and cd into created dir
 mcd () {
     mkdir -p $1
     cd $1
}
##########################

export EDITOR=subl

if [[ $LANG = '' ]]; then
	export LANG=en_US.UTF-8
fi

### Ansible
source ~/bin/ansible/hacking/env-setup -q # Put ansible on PATH -quiet mode
export ANSIBLE_INVENTORY=~/ansible_hosts

##########################
#    The End For Now...  #
##########################
