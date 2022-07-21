# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/16 19:50:14 by ahernand          #+#    #+#              #
#    Updated: 2022/07/21 14:03:41 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y												update
RUN			apt-get -y												upgrade
RUN			apt -y													install	wget php-mysql php-fpm mariadb-server curl vim




RUN			mkdir													/run/php/
COPY		./requirements/wordpress/conf/www.conf					/etc/php/7.3/fpm/pool.d




WORKDIR		/var/www/html
RUN			wget													https://wordpress.org/wordpress-6.0.tar.gz
RUN			tar														-xvzf wordpress-6.0.tar.gz && rm -rf wordpress-6.0.tar.gz
RUN 		rm														wordpress/wp-config-sample.php

COPY 		./requirements/wordpress/conf/wp-config.php				wordpress

RUN			chmod													-R 777 wordpress
RUN			chown													-R www-data:www-data wordpress
RUN			mv														wordpress/* .




RUN			curl -O													https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN			chmod +x												wp-cli.phar
RUN			mv wp-cli.phar											/usr/local/bin/wp-cli

COPY		./requirements/wordpress/conf/run.sh					.	

CMD			["bash", "run.sh"]