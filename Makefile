# Makefile for yamdi

CC=g++
CFLAGS=-O2 -Wall

yamdi: yamdi.cpp Makefile
	$(CC) $(CFLAGS) yamdi.cpp -o centos/yamdi

clean: yamdi
	rm -f yamdi

install: yamdi
	install -m 0755 -o root centos/yamdi /usr/local/bin
