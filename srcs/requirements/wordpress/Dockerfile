# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/16 19:50:14 by ahernand          #+#    #+#              #
#    Updated: 2022/06/16 20:03:24 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt-get -y update
RUN			apt-get -y upgrade

RUN			apt -y install wordpress

CMD			["tail", "-f"]