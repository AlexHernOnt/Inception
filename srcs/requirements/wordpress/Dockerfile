# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/16 19:50:14 by ahernand          #+#    #+#              #
#    Updated: 2022/07/12 18:03:01 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y				update
RUN			apt-get -y				upgrade
RUN			apt-get -y				install wget

RUN			apt	-y					install wordpress
RUN			apt -y					install	php-mysql php-fpm mariadb-server vim

WORKDIR		/var/www/html

RUN			wget					https://wordpress.org/wordpress-6.0.tar.gz
RUN			tar						-xvzf wordpress-6.0.tar.gz && rm -rf wordpress-6.0.tar.gz

RUN 		rm						wordpress/wp-config-sample.php

COPY 		./requirements/wordpress/conf/wp-config.php								wordpress

RUN			chmod					-R 777 wordpress
RUN			chown					-R www-data:www-data wordpress
RUN			mv						wordpress/* .

EXPOSE		9000

RUN			mkdir					/run/php/

COPY		./requirements/wordpress/conf/www.conf									/etc/php/7.3/fpm/pool.d

CMD			["php-fpm7.3", "-F"]