# Pacman
https://itsfoss.com/pacman-command/

## Find a package
pacman -Q <package>

=
## Install a package
pacman -S <package>

=
## List upgradable packages
pacman -Qu

## Upgrade specific package
pacman -S <package>

## Upgrade every packages
pacman -Syu                 equivalent to apt update && apt upgrade (--sync --refresh --sysupgrade)

=
## Remove a package along with its dependencies
pacman -Rns <package>       equivalent to apt purge (--remove --nosave --recursive)

=
## Remove dependencies
pacman -R $(pacman -Qdtq)   equivalent to apt autoremove (--query --deps --unrequired --quiet)

=
## Remove all packages in cache
pacman -Scc                 equivalent to apt clean (--sync --clean --clean)
pacman -Sc                  equivalent to apt autoclean (--sync --clean)


Remove dependencies
https://bbs.archlinux.org/viewtopic.php?id=57431
	pacman -Qdt
	pacman -Rsn $(pacman -Qdtq)
https://linuxhint.com/remove_package_dependencies_pacman_arch_linux/


