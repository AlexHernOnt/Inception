# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/16 19:50:14 by ahernand          #+#    #+#              #
#    Updated: 2022/07/15 17:26:23 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y												update
RUN			apt-get -y												upgrade
RUN			apt-get -y												install wget

RUN			apt	-y													install wordpress
RUN			apt -y													install	php-mysql php-fpm mariadb-server curl vim

WORKDIR		/var/www/html

RUN			wget													https://wordpress.org/wordpress-6.0.tar.gz
RUN			tar														-xvzf wordpress-6.0.tar.gz && rm -rf wordpress-6.0.tar.gz

RUN 		rm														wordpress/wp-config-sample.php

COPY 		./requirements/wordpress/conf/wp-config.php				wordpress

RUN			chmod													-R 777 wordpress
RUN			chown													-R www-data:www-data wordpress
RUN			mv														wordpress/* .


RUN			mkdir													/run/php/

COPY		./requirements/wordpress/conf/www.conf					/etc/php/7.3/fpm/pool.d

RUN			curl -O													https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN			chmod +x												wp-cli.phar
RUN			mv wp-cli.phar											/usr/local/bin/wp-cli

COPY		./requirements/wordpress/conf/run.sh					.	

EXPOSE		9000

CMD			["bash", "run.sh"]

#CMD		["php-fpm7.3", "-F"]