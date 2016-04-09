CC = gcc
CFLAGS = -Wall -g -pedantic
LDFLAGS = -lpthread

OBJS = server.o csapp.o

all : server

server: $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o server

csapp.o: csapp.c
	$(CC) $(CFLAGS) -c csapp.c

server.o:
	$(CC) $(CFLAGS) -c server.c

clean:
	rm -f *~ *.o server 
