SHELL = /bin/sh

# clear, then define suffix list
.SUFFIXES:
.SUFFIXES: .md

IN_FILES = $(wildcard *.md)
OUT_FILES = $(patsubst %.md,%.html,$(IN_FILES))

.PHONY: all clean
all   : $(OUT_FILES)

%.html: %.md
	markdown $(<) > $(@)
clean :
	rm -f $(OUT_FILES)
	find . -name "*~" -type f -print0 | xargs -0 rm -f
