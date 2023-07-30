
# list installed
nix-env -q

# list upgradable
#nix-env 

# search
nix-env -qa '.*'${pkg}'.*'

# install
nix-env --install ${pkg}

# uninstall
nix-env --uninstall ${pkg}

# switch profile
nix-env -G ${gen}
nix-env --rollback

nix-env --list-generations

nix-env --delete-generations ${gen}
nix-env --delete-generations old

