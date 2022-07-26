sleep 3

/usr/local/bin/wp-cli core install	--allow-root --path=$WP_PATH --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_EMAIL

#/usr/local/bin/wp-cli post create	--a llow-root --post_type=post --post_status=publish --post_title='This was published from wp-cli' --post_content="Hello, this is a post made by me, a robot! actually I am just repeating the words that has been written in my code! Have a good evening Homo Sapiens!"

php-fpm7.3 -F