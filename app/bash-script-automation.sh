#!/bin/bash

echo "hello from container"

echo "updating and installing python3"
apt update && apt-get install -y  python3

echo "installing pip"
apt install python3-pip -y

echo "installing flask"
pip install flask

echo "installing mariadb dependancy"
apt install libmysqlclient-dev -y


# echo "insatlling mariadb server------------------------------------------------------"
# apt install mariadb-server -y

echo "installing flask mysql"
pip install flask-mysqldb



# echo "setting up secure installation"
# mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('s123456');FLUSH PRIVILEGES;"
# mysql -u root -ps123456 -e "DELETE FROM mysql.user WHERE User='';DELETE FROM mysql.user WHERE User='';DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"

# echo "Creating database"
# mysql -u root -ps123456 -e "CREATE DATABASE foo;CREATE USER 'abdullah'@'localhost' IDENTIFIED BY 'test123';GRANT ALL PRIVILEGES ON foo.* TO 'abdullah'@'localhost';"

# echo "Creating table in database"
# mysql -u abdullah -ptest123 -e "use foo;select database();create table students(id INT NOT NULL AUTO_INCREMENT,name VARCHAR(30) NOT NULL,email varchar(50) NOT NULL,phone varchar(10) NOT NULL,PRIMARY KEY(id));"



# echo "changing directory"
# cd flask-app

# echo "this is filesystem"
# ls

# echo "starting flask server"
# nohup python3 __init__.py > log.txt 2>&1 &



