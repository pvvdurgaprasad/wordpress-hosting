#run these commands from directory where existing wordpress files are copied to
#ex: ..\wordpress\migratefiles
sudo apt-get install php7.2-zip php7.2-curl
composer require google/cloud-tools
php vendor/bin/wp-gae update ../migratefiles