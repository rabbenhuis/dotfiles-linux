# Executable
is-executable() {
	local BIN=$(command -v "$1" 2>/dev/null)

	if [[ ! $BIN == "" && -x $BIN ]] ; then
		true;
	else 
		false;
	fi
}

# Add to path
prepend-path() {
	[[ -d $1 ]] && PATH="$1:$PATH"
}
