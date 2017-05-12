# Construct the prompt
PROMPT_COMMAND="history -a"
case ${TERM} in
	xterm*)
		# Time of day (with load info)
		PS1="[\A "
		# User@Host (with connection type info)
		PS1=${PS1}"\u@\h "
		# PWD (with disk space info)
		PS1=${PS1}"\w] "
		# git info (needs bash-completion)
		PS1=${PS1}'$(__git_ps1 "(%s) ")'
		# Prompt (with 'job' info)
		PS1=${PS1}"$ "
		# Set title of the current xterm
		PS1=${PS1}"\[\e]0;[\u@\h] \w\a\]"
		;;
	*)
		PS1="(\A \u@\h \w) > "
		;;
esac

