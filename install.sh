https://tecadmin.net/install-lamp-apache-mysql-and-php-on-centos-rhel-7/

rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum --enablerepo=epel,remi install httpd
systemctl enable httpd.service
systemctl start httpd.service
rpm -Uvh  https://repo.mysql.com/mysql80-community-release-el7-1.noarch.rpm
yum install mysql-server
systemctl enable mysqld.service
systemctl start mysqld.service
grep "A temporary password" /var/log/mysqld.log  | tail -n1 #get password
mysql_secure_installation
grep "A temporary password" /var/log/mysqld.log  | tail -n1
mysql_secure_installation
grep "A temporary password" /var/log/mysqld.log  | tail -n1
mysql_secure_installation
yum --enablerepo=epel,remi-php74 install php
yum --enablerepo=remi-php74 list php-*
yum --enablerepo=remi-php74 install php-mysql php-xml php-xmlrpc php-soap php-gd php-ldap
systemctl restart httpd.service
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
php -v
httpd -v
mysql -V
history
   grep "A temporary password" /var/log/mysqld.log  | tail -n1

