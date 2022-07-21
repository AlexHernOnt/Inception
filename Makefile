# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/31 17:52:30 by ahernand          #+#    #+#              #
#    Updated: 2022/07/21 14:57:01 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Inception

all: $(NAME) 

$(NAME) :
	#echo "127.0.0.1 ahernand.42.fr" >> /etc/hosts
	#mkdir /home/ahernand
	#mkdir /home/ahernand/mariadb
	#mkdir /home/ahernand/wordpress
	cd srcs && docker-compose up




 # ______ Cleaning ______ #


fclean:
	@echo "\033[0;36mCleaning ...\033[0m";
	@docker container	rm -f $$(docker container ls -aq)	> /dev/null 2>&1;	\
	@docker image		rm -f $$(docker image ls -aq)		> /dev/null 2>&1;	\
	@docker volume		rm -f $$(docker volume ls -q)		> /dev/null 2>&1;	\
	@docker network		rm    $$(docker network ls -q)		> /dev/null 2>&1; echo "\n\033[0;32mAll cleaned :)\033[0m";

re: fclean all