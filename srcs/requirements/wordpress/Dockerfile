# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/16 19:50:14 by ahernand          #+#    #+#              #
#    Updated: 2022/06/17 20:47:06 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y	update
RUN			apt-get -y	upgrade
RUN			apt-get -y	install wget

RUN			apt		-y	install wordpress
RUN			apt-get -y	install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

WORKDIR		/var/www/html

RUN			wget		https://wordpress.org/wordpress-6.0.tar.gz
RUN			tar			-xvzf wordpress-6.0.tar.gz && rm -rf wordpress-6.0.tar.gz

CMD			["tail", "-f"]