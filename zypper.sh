# Pacman

## Find a package
zypper search ${package}

## Install a package
zypper install ${package}

## List upgradable packages
zypper list

## Upgrade specific package
zypper update ${package}

## Upgrade every packages
zypper update                 equivalent to apt update && apt upgrade (--sync --refresh --sysupgrade)

## Remove a package along with its dependencies
zypper rm ${package} --clean-deps       equivalent to apt purge (--remove --nosave --recursive)

## Remove dependencies
zypper packages --orphaned
zypper packages --unneeded
equivalent to apt autoremove (--query --deps --unrequired --quiet)

## Remove all packages in cache

