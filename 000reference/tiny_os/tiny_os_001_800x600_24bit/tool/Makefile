
CC = gcc
CFLAGS = -m32 -g -O0

default :
	make header
	make elf2tinyapp
	make makefont

header : header.c
	$(CC) $(CFLAGS) $< -o $@

elf2tinyapp : elf2tinyapp.c
	$(CC) $(CFLAGS) $< -o $@

makefont : makefont.c
	$(CC) $(CFLAGS) $< -o $@

clean :
	-rm header
	-rm elf2tinyapp
	-rm makefont

