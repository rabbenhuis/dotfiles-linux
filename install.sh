#!/bin/bash

# Create needed directories
for dir in {.profile.d,.bashrc.d} ; do
	if [[ -d ~/$dir ]] ; then
		rm -rf ~/$dir
	fi

	mkdir -p ~/$dir
	chmod 750 ~/$dir
done
unset dir

# Copy scripts to ~/.profile.d
for script in ./bash/profile.d/*.sh ; do
	if [[ -r "$script" ]]; then
		cp $script ~/.profile.d/$(basename $script)
	fi
done
unset -v script

# Copy scripts to ~/.bashrc.d
for script in ./bash/bashrc.d/*.sh ; do
	if [[ -r "$script" ]]; then
		cp $script ~/.bashrc.d/$(basename $script)
	fi
done
unset -v script

# Copy bash_profile and bashrc
for dotfile in ./bash/{bash_profile,bashrc} ; do
        if [[ -f ~/.$(basename $dotfile) ]] ; then
                rm -f ~/.$(basename $dotfile)
        fi

        cp $dotfile ~/.$(basename $dotfile)
done
unset dotfile
