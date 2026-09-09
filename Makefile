# EECS 348 Lab 02
# makefile that contains instructions for compiling and linking main.c, isOdd.c, and isOdd.h
# Inputs: main.c, isOdd.c, isOdd.h
# Outputs: main.o, isOdd.o, final/executable program
# Source: based on code given in makefile tutorial in lab 02 instructions on Canvas
# Author: Madelyn Armitage
# Creation Date: 09/10/2026
# No collaborators


CC=gcc #creates variable CC for gcc compliling
CFLAGS = -c -Wall #stores options to pass to the c compiler. -c is for compiling into an object and -wall is for compiler warnings

all: program #running make causes program to be built

program: main.o isOdd.o #shows that program depends on main.o and isOdd.o. Links them together to make executable called program
	$(CC) main.o isOdd.o -o program 
#compiles main.o and isOdd.o

main.o: main.c isOdd.h #shows that main.o is dependent on main.c and isOdd.h. compiles them together to make main.o.
	$(CC) $(CFLAGS) main.c 
#compiles main.c and checks for common compiler warnings

isOdd.o: isOdd.c isOdd.h #shows that isOdd.o is dependent on isOdd.c and isOdd.h. compiles them together to make isOdd.o.
	$(CC) $(CFLAGS) isOdd.c
#compiles isOdd.c and checks for common compiler warnings

clean: #creates a target called clean with no dependencies
	rm -f *.o program 
#deletes object files and executable files, but leaves source code untouched. 
.PHONY: clean #makes clean be used as an action


