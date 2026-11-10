# package-manager-simplify

Side-by-side cheat sheets for the common tasks of many package managers, so you can
do the same job on any system without looking up each tool's flags again.

## What it covers

One file per package manager, each answering the same questions in the same order:
find a package, show package info, install, list installed, list upgradable, upgrade one,
upgrade everything, remove with dependencies, remove orphaned dependencies, clean the cache.
Where useful, the equivalent `apt` command is noted next to it (for example
`pacman -Rns` ≈ `apt purge`).

| File | Package manager |
|---|---|
| `apt.sh` | APT / dpkg / aptitude (Debian, Ubuntu) |
| `dnf.sh` | DNF (Fedora, RHEL) |
| `pacman.sh` | pacman (Arch) |
| `yay.sh` | yay (AUR helper) |
| `zypper.sh` | zypper (openSUSE) |
| `emerge.sh` | Portage (Gentoo) |
| `eopkg.sh` | eopkg (Solus) |
| `pkg_.sh` | pkg (FreeBSD) |
| `nix.sh`, `nixos.sh` | Nix / NixOS |
| `guix.sh` | GNU Guix |
| `flatpak.sh`, `snap.sh`, `AppImage.sh` | universal packages |
| `brew.sh` | Homebrew (macOS) |
| `choco.ps1` | Chocolatey / PackageManagement (Windows) |
| `pip.py` | pip (Python) |

The files are **notes, not programs**. They use a `.sh`/`.ps1`/`.py` extension only so
editors highlight them; don't execute them.

## Getting it

Nothing to build or install:

```bash
git clone https://github.com/nano-rex/package-manager-simplify.git
cd package-manager-simplify
```

## Example

Compare how each manager removes a package together with its dependencies:

```bash
grep -m1 -A1 "Remove a package along with its dependencies" apt.sh pacman.sh dnf.sh zypper.sh
```

```
apt.sh:## Remove a package along with its dependencies
apt.sh-apt purge <package>
pacman.sh:## Remove a package along with its dependencies
pacman.sh-pacman -Rns <package>       equivalent to apt purge (--remove --nosave --recursive)
...
```

Or read one system's full sheet: `less pacman.sh`.

## License

GPL-3.0, see `LICENSE`.
