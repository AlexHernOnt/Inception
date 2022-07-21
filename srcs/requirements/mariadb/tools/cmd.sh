service mysql start

mysql --user=root --password=$MARIADB_ROOT_PASSWORD << EOF
	create database	$MARIADB_DATABASE;
	create user '$MARIADB_USER' identified by '$MARIADB_PASSWORD';
	grant all privileges on $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%';
	FLUSH PRIVILEGES;
	ALTER USER 'root'@'localhost' IDENTIFIED BY '$MARIADB_ROOT_PASSWORD';
	shutdown;
EOF

mysqld_safe 
