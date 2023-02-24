CC = gcc

main: main.c apple/addnum.o
	$(CC) -o main main.c apple/addnum.o

apple/addnum.o: apple/addnum.c
	echo "*** building apple/addnum.o ***"
	cd apple/ && $(MAKE) CC='$(CC)'

clean:
	@cd apple && $(MAKE) clean
	@rm -f *.o main

.PHONY: clean
