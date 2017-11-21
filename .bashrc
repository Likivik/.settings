#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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
### Arch related
alias pacrepo='sudo reflector -l 20 -f 10 --save /etc/pacman.d/mirrorlist'
alias pacman='sudo pacman'
alias journalctl='sudo journalctl'
alias pacu='sudo pacman -Syu --noconfirm' # Updates the system (doesn't ask for confirmation)
alias auru='yaourt -Syua --noconfirm'
alias systemctl='sudo systemctl'
alias se='ls /usr/bin | grep'

export EDITOR=nvim
#export QT_STYLE_OVERRIDE=gtk
#export QT_SELECT=qt5

if [[ $LANG = '' ]]; then
	export LANG=en_US.UTF-8
fi

##########################
#    The End For Now...  #
##########################
