# Pacman for Archlinux derivative distributions

## Find a package
pacman -Q ${package}

## Install a package
pacman -S ${package}

## List upgradable packages
pacman -Qu

## Upgrade specific package
pacman -S ${package}

## Upgrade every packages
pacman -Syu                 equivalent to apt update && apt upgrade (--sync --refresh --sysupgrade)

## Remove a package along with its dependencies
pacman -Rns ${package}       equivalent to apt purge (--remove --nosave --recursive)

## Remove dependencies
pacman -R $(pacman -Qdtq)   equivalent to apt autoremove (--query --deps --unrequired --quiet)
pacman -Qdt
pacman -Rsn $(pacman -Qdtq)

## Remove all packages in cache
pacman -Scc                 equivalent to apt clean (--sync --clean --clean)
pacman -Sc                  equivalent to apt autoclean (--sync --clean)


###################################################################3
# AUR(Arch User Repository)

sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

