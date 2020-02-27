# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ihwang <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/27 19:29:47 by ihwang            #+#    #+#              #
#    Updated: 2020/02/27 20:54:27 by tango            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a


SRCS =  src/*.c

OBJECTS = *.o


all: $(NAME)

$(NAME): $(SRCS)
	@gcc -Wall -Wextra -Werror -I./include -c $(SRCS)
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)

clean:
	@/bin/rm -f $(OBJECTS)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
