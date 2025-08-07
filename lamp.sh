  # A script to install apache2, mysql and PHP
  
	echo "Updating OS packages................"
	
	# Update the os
	sudo apt update -y
	sudo apt upgrade -y
	
	echo "Installing Apache .................."

	# Install Apache
	sudo apt install -y apache2
	sudo systemctl enable apache2
	sudo systemctl start apache2
	
	echo "Installing MySQl .................."
	
	# Install MySQl
	sudo apt install -y mysql-server 
	sudo systemctl enable mysql
	sudo systemctl start mysql
    
	echo "Installing PHP..................."
	# Install PHP
	sudo apt install -y php libapache2-mod-php php-mysql
	sudo apt install -y php-curl php-gd php-mbstring php-xml php-json php-xmlrpc php-soap php-intl php-zip
	sudo systemctl restart apache2
	
	echo "LAMP installation completed successfully"