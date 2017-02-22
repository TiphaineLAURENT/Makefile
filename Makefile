##
## Makefile for Makefile in /home/TiphaineLaurent/CPE_2016_matchstick
## 
## Made by Tiphaine LAURENT
## Login   <TiphaineLaurent@epitech.net>
## 
## Started on  Wed Feb 15 11:38:54 2017 Tiphaine LAURENT
## Last update Wed Feb 22 13:30:41 2017 Tiphaine LAURENT
##

CC	=	@gcc
CFLAGS	+=	-W -Wall
#CFLAGS	+=	-ansi -pedantic
CFLAGS	+=	-I./includes

LDFLAGS	+=	-lmy -lprintf -L./libs

RM	=	@rm -f

NAME	=	matchstick

DIR	=	./srcs/
SRCS	=	main.c

OBJS	=	$(foreach SRCS,$(SRCS),$(DIR)$(SRCS:.c=.o))


all:	$(NAME)

$(NAME):$(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(LDFLAGS) $(CFLAGS)

create:
	@mkdir srcs includes libs
clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re