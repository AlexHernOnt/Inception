# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 14:24:39 by ahernand          #+#    #+#              #
#    Updated: 2022/07/18 17:24:33 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y										update
RUN			apt-get -y										upgrade

RUN			apt -y install									nginx openssh-server openssl

EXPOSE		9000

COPY		./requirements/nginx/conf/nginx.conf			/etc/nginx/nginx.conf
COPY		./requirements/nginx/conf/default				/etc/nginx/sites-available/default

RUN			mkdir											/etc/nginx/ssl
RUN			chmod 700										/etc/nginx/ssl
RUN			openssl											req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42Madrid/CN=ahernand" -keyout /etc/nginx/ssl/example.key -out /etc/nginx/ssl/example.crt

CMD			["nginx", "-g", "daemon off;"]