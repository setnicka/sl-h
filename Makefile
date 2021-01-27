#==========================================
#    Makefile: makefile for sl 5.1
#	Copyright 1993, 1998, 2014
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2014/03/31
#==========================================

CC=gcc
CFLAGS=-O -Wall

all: sl sl-h

sl: sl.c sl.h
	$(CC) $(CFLAGS) -o sl sl.c -lncurses

sl-h: sl-h.c sl-h.h header.h
	$(CC) $(CFLAGS) -o sl-h sl-h.c -lncurses

clean:
	rm -f sl sl-h

distclean: clean
