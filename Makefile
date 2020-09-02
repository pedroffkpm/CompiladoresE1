CC = gcc
LFL = lfl
# CCFLAGS = 

#test if macos
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S), Darwin)
	LFL = ll
endif


all:
	flex scanner.l
	$(CC) -o etapa1 main.c lex.yy.c -$(LFL)

clean:
	rm -rf lex.yy.c etapa1