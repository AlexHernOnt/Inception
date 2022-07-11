# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 14:24:39 by ahernand          #+#    #+#              #
#    Updated: 2022/07/11 17:23:20 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y										update
RUN			apt-get -y										upgrade

RUN			apt -y install									nginx

EXPOSE		9000

#COPY		./requirements/nginx/conf/nginx.conf			/etc/nginx/nginx.conf
COPY		./requirements/nginx/conf/default				/etc/nginx/sites-available/default

CMD			["nginx", "-g", "daemon off;"]