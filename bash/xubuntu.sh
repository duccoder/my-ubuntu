sudo apt-get update && sudo apt-get upgrade -y

#unhide startup items
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop

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

# git
sudo apt-get install git -y
git config --global user.name "Duc Tran"
git config --global user.email "ducta@enguys.com"

# oh my zsh
sudo apt-get install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# java
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

# lemp
sudo apt-get install nginx -y
sudo apt-get install mysql-server -y
sudo apt-get install php5-fpm php5-mysql -y
sudo nano /etc/php5/fpm/php.ini
# uncomment & change cgi.fix_pathinfo=1 to cgi.fix_pathinfo=0

# phpMyadmin
sudo apt-get install phpmyadmin -y
sudo ln -s /usr/share/phpmyadmin /usr/share/nginx/html
sudo nano /etc/nginx/sites-enabled/default

# composer
sudo apt-get install curl -y
sudo apt-get install php5-cli -y
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer

# enmod mcrypt
sudo php5enmod mcrypt

# install php5-curl
sudo apt-get install php5-curl

# install php5-ldap
# sudo apt-get install php5-ldap

# keep bright
#gedit /etc/rc.local
#echo 19 > /sys/class/backlight/acpi_video0/brightness

# nodejs
sudo apt-get install nodejs -y
sudo apt-get install npm -y
# chown nodejs
sudo chown -R `whoami` /usr/local/

sudo ln -s /usr/bin/nodejs /usr/bin/node

# browser sync
npm install -g browser-sync

# clean
sudo apt-get -f install && sudo apt-get autoremove -y && sudo apt-get autoclean -y && sudo apt-get clean -y
