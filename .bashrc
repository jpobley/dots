#
# ~/.bashrc
#

BROWSER=/usr/bin/google-chrome
EDITOR=/usr/bin/vim

[ -s "/home/jp/.scm_breeze/scm_breeze.sh" ] && source "/home/jp/.scm_breeze/scm_breeze.sh"

export PATH=$PATH:/home/jp/bin:/home/jp/dev/go/bin:/usr/local/go/bin
export GOPATH=/home/jp/dev/go

GIT_PS1_SHOWDIRTYSTATE=1

source ~/.git-prompt.sh

export TERM=xterm-256color

# python venvwrapper
export WORKON_HOME=~/dev/virtual_envs
source /usr/local/bin/virtualenvwrapper.sh

[ -s "/home/jp/.scm_breeze/scm_breeze.sh" ] && source "/home/jp/.scm_breeze/scm_breeze.sh"

# prompt
PS1='\[\e[33m\][ \w ]$(__git_ps1 " \[\e[36m\]git:(\[\e[35m\]%s\[\e[36m\])") \[\e[39m\]\$ '

xset r rate 200 25

alias ls='ls --color=auto'
alias la='ls -al'
alias ll='ls -al'
alias top='htop'
alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \;'

# logout of session
alias leave='gnome-session-quit'

# alias calls to pdocker since it presumes python2
alias pdr='python /home/jp/df-bootstrap/pdocker.py $1'

# alias calls to tree
alias tree='tree -C '

# nokia vpn
alias connect-nokia='sudo vpnc /etc/vpnc/nokia.conf'
alias disconnect-nokia='sudo vpnc-disconnect'

export NVM_DIR="/home/jp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
alias config='/usr/bin/git --git-dir=/home/jp/.cfg/ --work-tree=/home/jp'
