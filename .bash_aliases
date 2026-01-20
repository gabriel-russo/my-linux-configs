# System
alias vim='nvim'
alias vimconfig='nvim ~/.config/nvim/init.vim'
alias mkdir='mkdir -pv'
alias rm='rm -v'
alias cp='cp -iv'
alias mv='mv -iv'
alias grep='grep --color=always'
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'

# Shortcuts
alias localhost='curl ipinfo.io/ip'
alias chtsh='function chtsh_call () { curl cht.sh/$1; }; chtsh_call'
alias host='hostname -I'

# Apps
alias pgadmin3="docker run --rm --name pgadmin3 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY mdouchement/pgadmin3:1.20.0"

