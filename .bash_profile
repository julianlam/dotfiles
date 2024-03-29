. /usr/share/git-core/contrib/completion/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(__git_ps1 ' (%s)')\[\033[00m\] $ "

source ~/.bash_aliases

export PATH="/home/julian/scripts:$(yarn global bin):$HOME/.local/bin:$PATH"
export LESS=R
export EDITOR=/usr/bin/vi

tmux new -A -s $HOSTNAME
