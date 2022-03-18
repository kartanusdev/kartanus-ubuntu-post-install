# Install common tools
sudo apt-get install net-tools -y
sudo apt-get install curl -y
# Install common software
# Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> \ /etc/apt/sources.list.d/google.list'
sudo apt update -y && sudo apt install google-chrome-stable -y
# Spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y && sudo apt-get install spotify-client -y
# Discord
sudo apt-get install 

# Customization
# Set background

