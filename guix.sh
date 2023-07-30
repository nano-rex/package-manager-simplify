#!/bin/bash

troubleshoot() {
	printf "\nCreate symbolic link\n"
	ln -s /home/$USER/.guix-profile/share/applications/* /home/$USER/.local/share/applications/
	find /home/$USER/.local/share/applications -type l -exec test ! -e {} \; -delete # remove broken symlinks
	sudo ln -s /home/user/.guix-profile/bin/* /usr/local/bin/
	sudo find /usr/local/bin -type l -exec test ! -e {} \; -delete # remove broken symlinks
}

if [[ $1 == "setup" ]]; then
	cp -r /usr/share/fonts/* ~/.fonts/share/fonts/
	fc-cache -vf
elif [[ $1 == "list" ]]; then
	printf "guix list\n"
	guix package --list-installed # guix package -I
elif [[ $1 == "search" ]]; then
	printf "guix search $2\n"
	guix search ''${2}''
elif [[ $1 == "install" ]]; then
	printf "guix install $2\n"
	guix install ${2}
	troubleshoot
elif [[ $1 == "remove" ]]; then
	printf "guix remove $2\n"
	guix remove ${2}
	troubleshoot
elif [[ $1 == "update" ]]; then
	printf "guix upgrade\n"
	guix upgrade
elif [[ $1 == "autoremove" ]]; then
	printf "guix gc\n"
	guix gc
	troubleshoot
fi

