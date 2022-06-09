# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 14:24:39 by ahernand          #+#    #+#              #
#    Updated: 2022/06/09 16:22:44 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y update
RUN			apt-get -y upgrade

RUN			apt -y install nginx

#EXPOSE 80 80

COPY		./requirements/nginx/conf/nginx.conf /etc/nginx/nginx.conf

CMD			["nginx", "-g", "daemon off;"]