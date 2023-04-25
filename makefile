CC= gcc
FLAGS= -g -Wall -fPIC

all: cmp copy

cmp: cmp.o 
	$(CC) $(FLAGS) cmp.o -o cmp

cmp.o: cmp.c cmp.h
	$(CC) $(FLAGS) -c cmp.c

copy: copy.o
	$(CC) $(FLAGS) copy.o -o copy

copy.o: copy.c
	$(CC) $(FLAGS) -c copy.c

.PHONY: clean all
clean: 
	rm -f *.o cmp