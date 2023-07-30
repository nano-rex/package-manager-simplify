# Portage for Gentoo derivative distributions

## Find a package
emerge -Q <package>

=
## Install a package
emerge -s <package-name>
emerge -S <package-description>

=
## List upgradable packages
pacman -Qu

## Upgrade specific package
emerge -uD <package>

## Upgrade every packages
emerge -uD world                 equivalent to apt update && apt upgrade (--sync --refresh --sysupgrade)

=
## Remove a package along with its dependencies
emerge -C <package>       equivalent to apt purge (--remove --nosave --recursive)

=
## Remove dependencies
pacman -R $(pacman -Qdtq)   equivalent to apt autoremove (--query --deps --unrequired --quiet)

=
## Remove all packages in cache
pacman -Scc                 equivalent to apt clean (--sync --clean --clean)
pacman -Sc                  equivalent to apt autoclean (--sync --clean)

