# Start with system path
# Retrieve it from getconf, otherwise it's just current $PATH

is-executable /usr/bin/getconf && PATH=$(`command -v /usr/bin/getconf` PATH)

# Prepend new items to path (if directory exists)
prepend-path "/bin"
prepend-path "/usr/bin"
prepend-path "/usr/local/bin"
prepend-path "/opt/puppetlabs/puppet/bin"
prepend-path "$HOME/.gem/ruby/2.1.0/bin"
prepend-path "$HOME/bin"
prepend-path "/sbin"
prepend-path "/usr/sbin"
prepend-path "/usr/local/sbin"

# Remove duplicates (preserving prepended items)
# Source: http://unix.stackexchange.com/a/40755
PATH=`echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`

# Wrap up
export PATH
