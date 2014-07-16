SHELL = /bin/sh

# clear, then define suffix list
.SUFFIXES:
.SUFFIXES: .c .o

CC = gcc
CFLAGS =-std=c99 -pedantic -Wall -Werror -Wextra -ggdb $(OPTCFLAGS)

TARG = aa
SRC = main.c
OBJ = $(patsubst %.c,%.o,$(SRC))

.PHONY: all clean
all   : $(TARG)

$(TARG): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -c -o $@

.PHONY: clean
clean :
	# delete all regular files ending in {~,o}
	-@find . -name "*~" -type f -print0 | xargs -0 /bin/rm -f
	-@rm *.o $(TARG)
