# Flatpak

## Debian
<a href=https://flatpak.org/setup/Debian/>Flatpak for Debian Official site</a>
  
sudo apt install flatpak
#mkdir -p ~/.local/share/flatpak/repo/objects/
#sudo mkdir -p ~/var/lib/flatpak/repo/objects/
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

### Gnome
#sudo apt install gnome-software-plugin-flatpak

### Completely remove flatpak
flatpak uninstall --unused
sudo apt-get remove --autoremove flatpak
sudo apt-get purge flatpak


## flatpak applications

### Marker
##### a markdown editor

#### install
flatpak install flathub com.google.AndroidStudio
flatpak install flathub com.github.fabiocolacio.marker

#### run
flatpak run com.google.AndroidStudio
flatpak run com.github.fabiocolacio.marker

#### uninstall
sudo flatpak uninstall com.github.fabiocolacio.marker


