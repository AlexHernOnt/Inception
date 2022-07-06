# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/16 19:50:14 by ahernand          #+#    #+#              #
#    Updated: 2022/07/06 16:25:16 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y	update
RUN			apt-get -y	upgrade
RUN			apt-get -y	install wget

RUN			apt		-y	install wordpress
RUN			apt-get -y	install php7.3 php7.3-fpm php-mysql php-pdo php-gd php-cli php-mbstring vim

WORKDIR		/var/www/html

COPY 		/requirements/wordpress/conf/wordpress_start.sh .

RUN			wget		https://wordpress.org/wordpress-6.0.tar.gz
RUN			tar			-xvzf wordpress-6.0.tar.gz && rm -rf wordpress-6.0.tar.gz

RUN 		rm wordpress/wp-config-sample.php
COPY 		/requirements/wordpress/conf/wp-config.php wordpress

COPY 		/requirements/wordpress/conf/index.html wordpress

RUN			chmod		-R 777 wordpress
RUN			chown		-R www-data:www-data wordpress
RUN			mv			wordpress/* .


#CMD			["bash", "wordpress_start.sh"]
CMD			["tail", "-f"]