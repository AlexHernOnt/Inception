#wp-cli core install --allow-root --path='var/www/html' --url=localhost --title="This is how you find the meaning of life" --admin_user=alex --admin_password=123 --admin_email=asd@asd.asd --force
wp-cli core install --allow-root --url="localhost:443" --title="This is how you find the meaning of life" --admin_user=alex --admin_password=123 --admin_email=asd@asd.asd

php-fpm7.3 -F