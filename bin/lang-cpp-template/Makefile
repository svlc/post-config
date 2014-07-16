SHELL = /bin/sh

# clear, then define suffix list
.SUFFIXES:
.SUFFIXES: .cpp .o

CC=g++
CPPFLAGS=-pedantic -Wall -Werror -Wextra -ggdb

TARG = aa
SRC=main.cpp
OBJ=$(patsubst %.cpp, %.o, $(SRC))

.PHONY: all clean
all   : $(TARG)

$(TARG): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.cpp
	$(CC) $(CFLAGS) $< -c -o $@

clean:
	# delete all regular files ending in {~,o}
	-@find . -name "*~" -type f -print0 | xargs -0 /bin/rm -f
	-@rm *.o $(TARG)
