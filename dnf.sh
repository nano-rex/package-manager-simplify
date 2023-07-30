# Dandified (package manager) for RedHat derivative distributions
### Previously known as yum

## Groups
dnf grouplist -v

## Find a package
dnf search ${package}

## Install a package
dnf install ${package}

## List upgradable packages
pacman -Qu

## Upgrade specific package
pacman -S ${package}

## Upgrade every packages
dnf update                 equivalent to apt update && apt upgrade (--sync --refresh --sysupgrade)

## Remove a package along with its dependencies
dnf rm ${package}           equivalent to apt purge (--remove --nosave --recursive)

## Remove dependencies
dnf autoremove             equivalent to apt autoremove (--query --deps --unrequired --quiet)

## Remove all packages in cache
pacman -Scc                 equivalent to apt clean (--sync --clean --clean)
pacman -Sc                  equivalent to apt autoclean (--sync --clean)

