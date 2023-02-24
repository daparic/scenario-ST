CC = gcc

main: main.c helper/addnum.o
	$(CC) -o main main.c helper/addnum.o

helper/addnum.o: helper/addnum.c
	echo "*** building helper/addnum.o ***"
	cd helper/ && $(MAKE) CC='$(CC)'

clean:
	@cd helper && $(MAKE) clean
	@rm -f *.o main

.PHONY: clean
