main: main.c
	gcc -o -std=gnu11 main main.c
run: main
	./main
valgrind: main
	valgrind ./main

