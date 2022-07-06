# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 14:24:39 by ahernand          #+#    #+#              #
#    Updated: 2022/07/06 17:51:47 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y update
RUN			apt-get -y upgrade

RUN			apt -y install nginx

RUN			apt -y install vim php-mysql php-fpm

EXPOSE		9000

COPY		./requirements/nginx/conf/nginx.conf	/etc/nginx/nginx.conf
COPY		./requirements/nginx/conf/default		/etc/nginx/sites-available/default
COPY		./requirements/nginx/conf/default		/etc/nginx/sites-available/default

#CMD			["nginx", "-g", "daemon off;"]

COPY		./requirements/nginx/tools/cmd.sh .

CMD			["bash", "cmd.sh"]