# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

d=.dircolors
test -r $d && eval "$(dircolors $d)"

# Loading aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Functions
source /usr/share/git/git-prompt.sh

# Colors
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

# PS1
function bash_prompt(){
	PS1=''${blu}'$(__git_ps1 " (%s)")'${pur}' \W'${grn}' \$ '${clr}
}

bash_prompt

# Bash history config
HISTCONTROL=ignoredups
HISTSIZE=1000
HISTFILESIZE=1000
shopt -s histappend

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
