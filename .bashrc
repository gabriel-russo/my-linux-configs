# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

d=.dircolors
test -r $d && eval "$(dircolors $d)"

# Loading aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# [<name>@<hostname> ~]$   <-- format
PS1="\[$(tput bold)\]\[$(tput setaf 6)\][\u@\h\[$(tput setaf 2)\] \w \[$(tput setaf 6)\]]\[$(tput setaf 3)\]\\$ \[$(tput sgr0)\]"

# Kitty terminal things

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
