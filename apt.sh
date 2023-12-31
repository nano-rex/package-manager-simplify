# Advance Package Tool (APT)
# Aptitude

## Find a package
apt search <package>

## Information of installed package
dpkg -s ${repo_deb}

## Install a package
apt install ${repo_deb}
dpkg -i ${standalone_deb} # won't install dependencies

## List installed packages
apt list --installed | wc -l

## List upgradable packages
apt list --upgradable

## Upgrade specific package
apt upgrade <package>

## Upgrade every packages
apt update && apt upgrade

## Remove a package along with its dependencies
apt purge <package>
dpkg -r ${standalone_deb}

## Remove dependencies
apt autoremove

## Remove all packages in cache
apt clean
apt autoclean

# Aptitude (package manager) for Debian derivative distributions

## Find a package
apt search <package>

=
## Install a package
apt install <package>

=
## List installed packages
apt list --installed | wc -l

## List upgradable packages
apt list --upgradable

## Upgrade specific package
apt upgrade <package>

## Upgrade every packages
apt update && apt upgrade

=
## Remove a package along with its dependencies
apt purge <package>

=
## Remove dependencies
apt autoremove

=
## Remove all packages in cache
apt clean
apt autoclean

#########################################

dpkg -i <package>

aptitude install <package>
