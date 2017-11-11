sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
add-apt-repository ppa:philip.scott/elementary-tweaks
add-apt-repository ppa:agornostal/ulauncher
sudo apt-get update
apt install deluge firefox vlc ubuntu-restricted-extras software-properties-common gnome-system-monitor elementary-tweaks ulauncher spotify-client gimp gparted geany baobab audacity 
