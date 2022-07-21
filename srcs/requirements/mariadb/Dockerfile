# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/07 20:14:16 by ahernand          #+#    #+#              #
#    Updated: 2022/07/21 14:04:29 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get update && apt-get install -y				mariadb-server systemd-sysv vim

COPY		./requirements/mariadb/conf/50-server.cnf			/etc/mysql/mariadb.conf.d/

COPY		./requirements/mariadb/tools/cmd.sh					.

EXPOSE		3306

CMD			["bash", "cmd.sh"]