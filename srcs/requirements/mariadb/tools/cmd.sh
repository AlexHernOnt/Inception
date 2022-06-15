service mysql start

mysql << EOF
	create	database	$MARIADB_DATABASE;
	create	user		'$MARIADB_USER' identified by '$MARIADB_PASSWORD';
	grant all privileges on $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%';
EOF

service mysql stop

mysqld_safe 