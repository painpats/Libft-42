# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cbourre <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/31 11:28:43 by cbourre           #+#    #+#              #
#    Updated: 2022/04/13 10:45:20 by cbourre          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libft.a

SRCS = 		libft/ft_isalpha.c \
			libft/ft_isdigit.c \
			libft/ft_isalnum.c \
			libft/ft_isascii.c \
			libft/ft_isprint.c \
			libft/ft_strlen.c \
			libft/ft_memset.c \
			libft/ft_bzero.c \
			libft/ft_memcpy.c \
			libft/ft_memmove.c \
			libft/ft_strlcpy.c \
			libft/ft_strlcat.c \
			libft/ft_toupper.c \
			libft/ft_tolower.c \
			libft/ft_strncmp.c \
			libft/ft_memcmp.c \
			libft/ft_strchr.c \
			libft/ft_strrchr.c \
			libft/ft_memchr.c \
			libft/ft_strnstr.c \
			libft/ft_atoi.c \
			libft/ft_calloc.c \
			libft/ft_strdup.c \
			libft/ft_putchar_fd.c \
			libft/ft_putstr_fd.c \
			libft/ft_putendl_fd.c \
			libft/ft_putnbr_fd.c \
			libft/ft_substr.c \
			libft/ft_strjoin.c \
			libft/ft_strtrim.c \
			libft/ft_strmapi.c \
			libft/ft_striteri.c \
			libft/ft_itoa.c \
			libft/ft_split.c \
			ft_printf/ft_print_char.c \
			ft_printf/ft_print_dec.c \
			ft_printf/ft_print_dec_uns.c \
			ft_printf/ft_print_hexa.c \
			ft_printf/ft_print_ptr.c \
			ft_printf/ft_print_str.c \
			ft_printf/ft_printf.c

BONUS =		ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c

HEADERS =	libft.h

CC =		gcc -g

CFLAGS =	-Wall -Wextra -Werror

CLIB =		ar -rcs

RM =		rm -f

OBJ =		$(SRCS:.c=.o)

BONUS_OBJ = $(BONUS:.c=.o)

all: $(NAME)
	
.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJ)
	$(CLIB) $(NAME) $(OBJ)

bonus: $(BONUS_OBJ)
	$(CLIB) $(NAME) $(BONUS_OBJ)

clean:
	$(RM) *.o

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
