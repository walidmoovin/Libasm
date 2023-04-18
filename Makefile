NAME = libasm.a

SRC_DIR = src

OBJ_DIR= $(SRCS:.s=.o)

ASM = nasm

ASMFLAGS = -f elf64

SRC_FILES = $(wildcard $(SRC_DIR)/*.s)

OBJ_FILES = $(SRC_FILES:.s=.o)

all : $(NAME)

$(NAME): $(OBJ_FILES) $(MAIN)
	ar rcs $@ $^

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)
clean:
	rm -rf $(OBJ_FILES)

fclean: clean
	rm -rf $(NAME)

re: fclean all