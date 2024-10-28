# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for examples
# Modified: 2024/10/28
#
# Recomended to merge it with your dist default .bashrc
#

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Colors
black='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'     # Red
green='\[\033[01;32m\]'   # Green
yellow='\[\033[01;33m\]'  # Yellow
blue='\[\033[01;34m\]'    # Blue
purple='\[\033[01;35m\]'  # Purple
cyan='\[\033[01;36m\]'    # Cyan
white='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'        # Reset

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Git for bash functions
[ -e /opt/git-completion/git-prompt.sh ] && source /opt/git-completion/git-prompt.sh

ps1_prefix='${debian_chroot:+($debian_chroot)}'
base_ps1=''${green}'\u'${white}'@'${cyan}'\H '${purple}'at '${blue}'\W '${yellow}'[\$]'${clr}': '

if [ -e /opt/git-completion/git-prompt.sh ]; then
	PS1=''${debian_prefix}''${red}'$(__git_ps1 "(%s) ")'${base_ps1}''
else
	PS1=''${debian_prefix}''${base_ps1}''
fi

# Local binaries PATH
export PATH=$PATH:$HOME/.local/bin

