# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/07 20:14:16 by ahernand          #+#    #+#              #
#    Updated: 2022/06/09 18:14:01 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get update
RUN			apt-get install -y mariadb-server
RUN			apt-get install -y systemd-sysv


COPY		./requirements/mariadb/cmd.sh ./
RUN 		bash cmd.sh

CMD		["systemd", "mysql", "start"]


EXPOSE		3306