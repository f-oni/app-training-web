# A script to configure mysql

 sudo mysql -u root
 
 CREATE DATABASE wordpress;
 CREATE USER wordpress@localhost IDENTIFIED BY 'ubuntu123';
 GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress.* TO wordpress@localhost;
 FLUSH PRIVILEGES;
 quit
 
 sudo service mysql start
 
#Configure WordPress to connect to the database

sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php

#set the database credentials in the configuration file 

sudo -u www-data sed -i 's/database_name_here/wordpress/' /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/username_here/wordpress/' /srv/www/wordpress/wp-config.php
sudo -u www-data sed -i 's/password_here/'ubuntu123' /srv/www/wordpress/wp-config.php