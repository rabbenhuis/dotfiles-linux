# Global aliases
if $(is-supported "alias -g"); then
	alias -g G="| grep -i"
	alias -g H="| head"
	alias -g T="| tail"
	alias -g L="| less"
fi

# List declared aliases, functions
alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions

LS_COLOR=`is-supported "ls --color" --color -G`
LS_TIMESTYLEISO=`is-supported "ls --time-style=long-iso" --time-style=long-iso`
LS_GROUPDIRSFIRST=`is-supported "ls --group-directories-first" --group-directories-first`

alias l="ls -lahA $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
alias ll="ls -lA $LS_COLOR"
alias lt="ls -lhAt $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"    # Sort by date, most recent first.
alias ltr="ls -lhAtr $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"  # Sort by date, most recent last.
alias lx="ls -lhAxb $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"   # Sort by extension.
alias lk="ls -lhAS $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"    # Sort by size, biggest first.
alias lkr="ls -lhASr $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"  # Sort by size, biggest last.
alias lc="ls -lhAc $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"    # Sort by/show change time, most recent first.
alias lcr="ls -lhAcr $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"  # Sort by/show change time, most recent last.
alias lu="ls -lhAu $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"    # Sort by/show access time, most recent first.
alias lur="ls -lhAur $LS_COLOR $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"  # Sort by/show access time, most recent last.
alias ld="ls -ld $LS_COLOR */"

unset LS_COLOR LS_TIMESTYLEISO LS_GROUPDIRSFIRST
