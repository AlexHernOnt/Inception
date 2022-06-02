# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahernand <ahernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/31 17:52:30 by ahernand          #+#    #+#              #
#    Updated: 2022/06/02 20:04:03 by ahernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Inception

all: $(NAME) 

$(NAME) :
	cd srcs && docker-compose up




 # ______ Cleaning ______ #

stop:
	echo "docker container stop $(docker container ls -aq)"


fclean:
	@yes | docker system prune -a | sleep 0

re: fclean all