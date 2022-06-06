# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/31 17:52:30 by ahernand          #+#    #+#              #
#    Updated: 2022/06/06 19:38:44 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Inception

all: $(NAME) 

$(NAME) :
	cd srcs && docker-compose up




 # ______ Cleaning ______ #


fclean:
	yes	|	docker system prune -a	|	sleep 0
	yes	|	docker image prune		|	sleep 0

re: fclean all