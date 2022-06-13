# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/07 20:14:16 by ahernand          #+#    #+#              #
#    Updated: 2022/06/13 20:10:01 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get update && apt-get install -y \
			mariadb-server \
			systemd-sysv
			
EXPOSE		3306

COPY		./requirements/mariadb/cmd.sh .
COPY		./requirements/mariadb/make_db.sql .

CMD ["bash", "cmd.sh"]