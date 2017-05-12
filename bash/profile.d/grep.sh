# Tell grep to highlight matches
if is-supported "grep --color a <<< a"; then
	GREP_OPTIONS+=" --color=auto"
fi

# Avoid VCS folders
if is-supported "echo | grep --exclude-dir=.cvs ''"; then
	for PATTERN in .cvs .git .hg .svn; do
		GREP_OPTIONS+=" --exclude-dir=$PATTERN"
	done
elif is-supported "echo | grep --exclude=.cvs ''"; then
	for PATTERN in .cvs .git .hg .svn; do
		GREP_OPTIONS+=" --exclude=$PATTERN"
	done
fi

export GREP_OPTIONS
export GREP_COLOR='1;32'
