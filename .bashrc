#
# ~/.bashrc
#

source ~/.nnn

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

alias ls='ls --color=auto'
alias pdflatex='pdflatex -halt-on-error'

PS1='[\u@\h \W]\$ '
[ -n "$NNNLVL" ] && PS1="[NNNSH] $PS1"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/my-stuff/path:$PATH"
eval "$(rbenv init - bash)"

export LESS="R"

export EDITOR="vim-server"
export GIT_EDITOR="/usr/bin/vim"
export VISUAL="vim-server"

export NNN_PLUG='f:fzopen;n:terminal'

export NVM_DIR="$HOME/.nvm"
export ANDROID_SDK_ROOT=/home/zack/Android/Sdk
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
