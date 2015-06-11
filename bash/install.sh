# su root
sudo -i

sudo apt-get update && sudo apt-get upgrade -y

# ibus unikey
sudo apt-get install ibus-unikey -y

# font ms
sudo apt-get install ttf-mscorefonts-installer -y

# vlc
sudo apt-get install vlc browser-plugin-vlc -y

# uget + aria2
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
sudo apt-get update
sudo apt-get install uget -y
sudo apt-get install aria2 -y

# unity tweak
sudo apt-get install unity-tweak-tool -y

# open terminal
sudo apt-get install nautilus-open-terminal -y

# compizconfig
sudo apt-get install compizconfig-settings-manager -y

# numix theme
sudo add-apt-repository ppa:numix/ppa -y
sudo apt-get update
sudo apt-get install numix-gtk-theme -y

# git
sudo apt-get install git -y
git config --global user.name "Duc Tran"
git config --global user.email "ducta@enguys.com"
sudo apt-get install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# Chrome
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb -y

# Dropbox
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
sudo dpkg -i dropbox_2015.02.12_amd64.deb -y

# keep bright
#gedit /etc/rc.local
#echo 19 > /sys/class/backlight/acpi_video0/brightness

# clean
sudo apt-get -f install && sudo apt-get autoremove -y && sudo apt-get autoclean -y && sudo apt-get clean -y