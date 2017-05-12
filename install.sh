#!/bin/bash

# Copy bash_profile and bashrc
for dotfile in ./bash/{bash_profile,bashrc} ; do
        if [[ -f ~/.$(basename $dotfile) ]] ; then
                rm -f ~/.$(basename $dotfile)
        fi

        cp $dotfile ~/.$(basename $dotfile)
done
unset dotfile

# Create the profile.d directory
if [[ -d ~/.profile.d ]] ; then
	rm -rf ~/.profile.d
fi
mkdir -p ~/.profile.d
chmod 750 ~/.profile.d

# Copy scripts to ~/.profile.d
for script in ./bash/profile.d/*.sh ; do
	if [[ -r "$script" ]]; then
		cp $script ~/.profile.d/$(basename $script)
	fi
done
unset -v script
