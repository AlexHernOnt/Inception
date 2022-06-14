# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/07 20:14:16 by ahernand          #+#    #+#              #
#    Updated: 2022/06/14 17:30:44 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get update && apt-get install -y \
			mariadb-server \
			systemd-sysv
			
EXPOSE		3306

COPY		./requirements/mariadb/tools/cmd.sh .

CMD ["bash", "cmd.sh"]