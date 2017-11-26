apt install software-properties-gtk -y
#chrome key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#spotify key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
#elementary tweaks
add-apt-repository ppa:philip.scott/elementary-tweaks
#ulaucher
add-apt-repository ppa:agornostal/ulauncher
#indicator-usb
add-apt-repository ppa:yunnxx/gnome3
#telegram
add-apt-repository ppa:atareao/telegram
#visual-studio-code
wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | apt-key add - && \
wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list && \
#atom
add-apt-repository ppa:webupd8team/atom
#libreoffice
add-apt-repository ppa:libreoffice/ppa

sudo apt-get update

apt install deluge firefox vlc ubuntu-restricted-extras software-properties-common gnome-system-monitor elementary-tweaks ulauncher spotify-client gimp gparted geany baobab audacity gedit uget lm-sensors psensor indicator-usb indicator-sensors git repo libwebsockets-dev google-chrome-stable telegram code atom snapd libreoffice -y

sudo apt remove epiphany-browser 

cd

# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

mkdir Projects
cd Projects
#dropbox
git clone https://github.com/zant95/elementary-dropbox.git
#telegram icon
git clone https://github.com/png2378/telegram-icon-updater.git
#possibile errore
sh elementary-dropbox/install-sh -y -y
sh telegram-icon-updater/setup.sh --install

#missing indicator-workspaces gitcracken simplenote master-PDF
