NAME = libft.a
CC = cc
CFLAGS = -Wall -Werror -Wextra -g3
AR = ar rcs
RM = rm -fr
SRC_DIR = /sources
GNL_DIR = /sources/get_next_line
PRINTF_DIR = /sources/ft_printf
SRC = $(SRC_DIR)/ft_isalpha.c \
	$(SRC_DIR)/ft_isdigit.c \
	$(SRC_DIR)/ft_isalnum.c \
	$(SRC_DIR)/ft_isascii.c \
	$(SRC_DIR)/ft_isprint.c \
	$(SRC_DIR)/ft_isint.c \
	$(SRC_DIR)/ft_strlen.c \
	$(SRC_DIR)/ft_strlen_map.c \
	$(SRC_DIR)/ft_memset.c \
	$(SRC_DIR)/ft_bzero.c \
	$(SRC_DIR)/ft_memcpy.c \
	$(SRC_DIR)/ft_memmove.c \
	$(SRC_DIR)/ft_strlcpy.c \
	$(SRC_DIR)/ft_strlcat.c \
	$(SRC_DIR)/ft_calloc.c \
	$(SRC_DIR)/ft_strdup.c \
	$(SRC_DIR)/ft_toupper.c \
	$(SRC_DIR)/ft_tolower.c \
	$(SRC_DIR)/ft_strchr.c \
	$(SRC_DIR)/ft_strcmp.c \
	$(SRC_DIR)/ft_strncmp.c \
	$(SRC_DIR)/ft_memchr.c \
	$(SRC_DIR)/ft_memcmp.c \
	$(SRC_DIR)/ft_strnstr.c \
	$(SRC_DIR)/ft_atoi.c \
	$(SRC_DIR)/ft_strrchr.c \
	$(SRC_DIR)/ft_substr.c \
	$(SRC_DIR)/ft_strjoin.c \
	$(SRC_DIR)/ft_strtrim.c \
	$(SRC_DIR)/ft_split.c \
	$(SRC_DIR)/ft_itoa.c \
	$(SRC_DIR)/ft_strmapi.c \
	$(SRC_DIR)/ft_striteri.c \
	$(SRC_DIR)/ft_putchar_fd.c \
	$(SRC_DIR)/ft_putstr_fd.c \
	$(SRC_DIR)/ft_putendl_fd.c \
	$(SRC_DIR)/ft_putnbr_fd.c \
	$(SRC_DIR)/ft_cpyarr.c \
	$(SRC_DIR)/ft_freearr.c \
	$(GNL_DIR)/get_next_line.c \
	$(GNL_DIR)/get_next_line_utils.c
SRCB = $(SRC_DIR)/ft_lstnew_bonus.c \
	$(SRC_DIR)/ft_lstadd_front_bonus.c \
	$(SRC_DIR)/ft_lstsize_bonus.c \
	$(SRC_DIR)/ft_lstlast_bonus.c \
	$(SRC_DIR)/ft_lstadd_back_bonus.c \
	$(SRC_DIR)/ft_lstdelone_bonus.c \
	$(SRC_DIR)/ft_lstclear_bonus.c \
	$(SRC_DIR)/ft_lstiter_bonus.c \
	$(SRC_DIR)/ft_lstmap_bonus.c \
	$(GNL_DIR)/get_next_line_bonus.c \
	$(GNL_DIR)/get_next_line_utils_bonus.c

OBJS = ${SRC:.c=.o}

OBJSB = ${SRCB:.c=.o}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

all: ${NAME}

bonus: ${NAME} ${OBJSB}
		${AR} ${NAME} ${OBJSB}

clean:
	${RM} ${OBJS} ${OBJSB}
	echo "Deleting .o files"

fclean: clean
		${RM} ${NAME} ${bonus}
		echo "Deleting .o files & ${NAME}"

re: fclean all
