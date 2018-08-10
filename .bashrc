#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias pdflatex='pdflatex -halt-on-error'

PS1='[\u@\h \W]\$ '

# nnn stuff

export NNN_TMPFILE="/tmp/nnn"
export NNN_USE_EDITOR=1

n()
{
	nnn "$@"

	if [ -f $NNN_TMPFILE ]; then
		. $NNN_TMPFILE
		rm -f $NNN_TMPFILE > /dev/null
	fi
}
