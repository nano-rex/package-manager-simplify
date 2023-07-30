# Pacman

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
zypper rm <package> --clean-deps       equivalent to apt purge (--remove --nosave --recursive)

=
## Remove dependencies
zypper packages --orphaned
zypper packages --unneeded
equivalent to apt autoremove (--query --deps --unrequired --quiet)

=
## Remove all packages in cache
pacman -Scc                 equivalent to apt clean (--sync --clean --clean)
pacman -Sc                  equivalent to apt autoclean (--sync --clean)
