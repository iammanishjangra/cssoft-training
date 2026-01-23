
echo "Install Apache + Wordpress + Extra Php Dependenices"
sudo apt update
sudo apt install apache2 mysql-server php-curl php-gd php-mbstring php-xml >

echo "Install UFW and Configure"
sudo apt install ufw -y
sudo ufw allow in "Apache"
sudo ufw active
sudo ufw reload

echo "Manual MYSQL Setup"
echo "+++++++++ START +++++++++"
echo ""
echo "sudo mysql_secure_installation"
echo "CREATE DATABASE wordpress_db;"
echo "CREATE USER 'manish'@'localhost' IDENTIFIED BY 'manish123'"
echo "GRANT ALL PRIVILEGES ON wordpress_db.* TO 'manish'@'localhost';"
echo "FLUSH PREVILEGES;"
echo "exit;"
echo ""
echo "+++++++++++ STOP +++++++++"

echo "Create a Folder for indexing website"
sudo mkdir -p /var/www/html
sudo chown -R $USER:$USER /var/www/html/

echo "<VirtualHost *:80>
    ServerName localhost
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
<Directory /var/www/html/>
    AllowOverride All
</Directory>" > sudo nano /etc/apache2/sites-available/localhost.conf

echo "Install Wordpress"
   wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
   sudo tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html
   sudo chown -R www-data:www-data /var/www/html

echo "Manual MYSQL Setup"
echo "+++++++++ START +++++++++"
echo ""
echo "sudo mysql_secure_installation"
echo "CREATE DATABASE wordpress_db;"
echo "CREATE USER 'manish'@'localhost' IDENTIFIED BY 'manish123'"
echo "GRANT ALL PRIVILEGES ON wordpress_db.* TO 'manish'@'localhost';"
echo "FLUSH PREVILEGES;"
echo "exit;"
echo ""
echo "+++++++++++ STOP +++++++++"

