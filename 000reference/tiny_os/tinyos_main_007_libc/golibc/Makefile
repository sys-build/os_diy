
TARGET     = golibc
STACKSIZE  =
MALLOCSIZE =
MMAREA     =
OBJS       = abs.o atof.o atoi.o errno.o frexp.o ldexp.o \
	memchr.o memcmp.o memmove.o memset.o qsort.o rand.o \
	sprintf.o strcat.o strcmp.o strcpy.o strcspn.o strdup.o \
	strlen.o strncat.o strncmp.o strncpy.o strpbrk.o strrchr.o \
	strspn.o strstr.o strtol.o strtoul.o strtoul0.o vsprintf.o
 
 
TOOLPATH =
INCPATH  = .
RULEFILE =
CC       = gcc -I$(INCPATH) -m32 -Os -W -Wall -Werror -c -fno-stack-protector
AR       = ar




ALL :
	make $(TARGET).lib

%.o : %.c Makefile
	$(CC) $*.c -o $*.o

$(TARGET).lib : $(OBJS) Makefile
	$(AR) r $@ $(OBJS)

clean :
	-rm *.o
	-rm $(TARGET).lib

