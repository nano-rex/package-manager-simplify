#!/bin/bash

troubleshoot() {
	printf "\nCreate symbolic link\n"
	ln -s /home/$USER/.nix-profile/share/applications/* /home/$USER/.local/share/applications/
	find /home/$USER/.local/share/applications -type l -exec test ! -e {} \; -delete
	sudo ln -s /home/user/.nix-profile/bin/* /usr/local/bin/
	sudo find /usr/local/bin -type l -exec test ! -e {} \; -delete
}

if [[ $1 == "list" ]]; then
	#ls /run/current-system/sw/bin/
	#ls ~/.nix-profile/bin/
	printf "nix-env -q\n"
	/home/$USER/.nix-profile/bin/nix-env -q
	printf "\nnix-env --list-generations\n"
	/home/$USER/.nix-profile/bin/nix-env --list-generations
elif [[ $1 == "search" ]]; then
	printf "nix-env -qaP $2\n"
	/home/$USER/.nix-profile/bin/nix-env -qaP ''${2}''
elif [[ $1 == "install" ]]; then
	printf "nix-env -iA nixpkgs.$2\n"
	/home/$USER/.nix-profile/bin/nix-env -iA nixpkgs.${2}
	troubleshoot
elif [[ $1 == "remove" ]]; then
	printf "nix-env -e $2\n"
	/home/$USER/.nix-profile/bin/nix-env -e ${2}
	troubleshoot
elif [[ $1 == "update" ]]; then
	printf "nix-channel --update\n"
	/home/$USER/.nix-profile/bin/nix-channel --update
	printf "nixos-rebuild switch\n"
	/home/$USER/.nix-profile/bin/nixos-rebuild switch 
	#printf "nix-env -u \'*\' \n"
	#/home/$USER/.nix-profile/bin/nix-env -u '*'
elif [[ $1 == "autoremove" ]]; then
	printf "nix-collect-garbage -d\n"
	/home/$USER/.nix-profile/bin/nix-collect-garbage -d
	printf "\nnix-env --delete-generations old\n"
	/home/$USER/.nix-profile/bin/nix-env --delete-generations old
	troubleshoot
fi
# Source: https://github.com/NixOS/nix
# curl -L https://nixos.org/nix/install | sh

# https://christitus.com/nix-package-manager/
# https://www.commandlinefu.com/commands/view/2369/find-broken-symlinks-and-delete-them
# https://stackoverflow.com/questions/22097130/delete-all-broken-symbolic-links-with-a-line
#
# Usage
#  List Installed packages 		nix-env -q
#  Install Packages 			nix-env -iA nixpkgs.packagename
#  Erase Packages 			nix-env -e packagename
#  Update All Packages 			nix-env -u
#  Update Specific Packages 		nix-env -u packagename
#  Hold Specific Package 		nix-env --set-flag keep true packagename
#  List Backups (Generations) 		nix-env --list-generations
#  Rollback to Last Backup 		nix-env --rollback
#  Rollback to Specific Generation 	nix-env --switch-generation #
#

