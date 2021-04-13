CFLAGS=-std=c11 -g3 -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

9cc: $(OBJS)
	$(CC) -o 9cc $(OBJS) $(LDFLAGS)

test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o

.PHONY: test clean
