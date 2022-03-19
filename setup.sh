#!/bin/bash

# --------------------------------------------------// Utilities //-------------------------------------------------- #
# must-have tools
sudo apt-get install net-tools wget curl software-properties-common apt-transport-https hwinfo aptitude build-essential -y
# ulauncher (better than albert :p)
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
# media codecs
sudo apt install ubuntu-restricted-extras -y
# work with files
sudo apt install rar unrar p7zip-full p7zip-rar -y
# laptop power tool
sudo apt install laptop-mode-tools -y
# neofetch
sudo apt install neofetch -y
cp ~/kartanus-ubuntu-post-install/neofetch/kartanus-ascii-sword.txt ~/.config/neofetch/ascii
cp ~/kartanus-ubuntu-post-install/neofetch ~/.config/neofetch/
# gotop
sudo apt install gotop -y
# tty-clock
sudo apt install tty-clock -y

# --------------------------------------------------// Software //----------------------------------------------- #
# google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> \ /etc/apt/sources.list.d/google.list'
sudo apt update -y && sudo apt install google-chrome-stable -y
# spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y && sudo apt-get install spotify-client -y
# discord
cd ~/Downloads
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt-get install ./discord.deb -y 
# zoom
wget - q https://zoom.us/client/latest/zoom_amd64.deb
sudo apt-get install ./zoom_amd64.deb -y
# okular pdf
sudo apt-get install okular -y
# color picker
cd ~/Downloads
wget https://github.com/Toinane/colorpicker/releases/download/2.0.3/colorpicker_2.0.3_amd64.deb
sudo apt install color_picker_2.0.3_amd64.deb
# color picker 2 (sorry for snap :c)
sudo snap install color-picker
# synaptic
sudo apt install synaptic -y
# nordpass (i hate snap too)
sudo snap install nordpass 
snap connect nordpass:password-manager-service
# scrot (screenshots)
sudo apt install scrot -y

# --------------------------------------------------// Development //---------------------------------------------- #
# alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty -y
mkdir -p ~/.config/alacritty
cd ~/.config/alacritty
mv ~/kartanus-ubuntu-post-install/alacritty/alacritty.yml ~/.config/alacritty/
# vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update -y && sudo apt install code
# neovim
sudo apt-get install nvim -y
# node 16v
curl -sL https://deb.nodesource.com/setup_16.x 596 | sudo -E bash -
sudo apt update -y
sudo apt-get install nodejs -y
sudo aptitude install npm -y
sudo npm install npm@latest -g
# yarn
sudo npm install --global yarn
# vlc
sudo apt install vlc -y
# install java
sudo apt-get install openjdk-11-jdk -y
# zsh (reboot pc)
sudo apt install zsh -y
chsh -s $(which zsh) 
grep zsh /etc/passwd
# starship (put y)
sudo curl -sS https://starship.rs/install.sh | sh
mv ~/kartanus-ubuntu-post-install/starship/starship.toml ~/.config
# ranger
sudo apt install ranger -y
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
# install ranger dev icons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf 
# nvim .config => TODO

# --------------------------------------------------// Customization //--------------------------------------------- #
# set background
sudo cp -R ~/kartanus-ubuntu-post-install/assets/img/bg-liquid-red.jpg //usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/bg-liquid-red.jpg
gsettings set org.gnome.desktop.screensaver picture-uri file:////usr/share/backgrounds/bg-liquid-red.jpg 
# alacritty themes
mkdir ~/.config/alacritty/
touch ~/.config/alacritty/alacritty.yml
# hide icons
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
# gnome tweaks
sudo apt install gnome-tweaks -y && sudo apt install chrome-gnome-shell -y

# --------------------------------------------------// Install fonts //---------------------------------------------- #
# fantasque sans mono NF
cd ~/kartanus-ubuntu-post-install/assets/fonts
cd CascadiaCode/ && sudo mv *.ttf /usr/share/fonts
# monokaki NF
cd ~/kartanus-ubuntu-post-install/assets/fonts
cd JetBrainsMono/ && sudo mv *.ttf /usr/share/fonts
# firacode NF
sudo apt install fonts-firacode -y

# --------------------------------------------------// Repair errors //---------------------------------------------- #
