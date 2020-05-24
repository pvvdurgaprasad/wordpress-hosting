#run these commands from directory where existing wordpress files are copied to
#ex: ..\wordpress\migratefiles
#sudo add-apt-repository ppa:ondrej/php
#sudo apt-get update
#sudo apt-get install php7.2
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
composer require google/cloud-tools
php vendor/bin/wp-gae update ../migratefiles