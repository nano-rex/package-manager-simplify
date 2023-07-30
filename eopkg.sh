# EOPKG for Solus distribution

## Find a package
eopkg install <package>

=
## Install a package
eopkg search <package>

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

