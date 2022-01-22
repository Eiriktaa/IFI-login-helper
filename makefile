main: main.c
	gcc -std=gnu11 main.c -o main
run: main
	./main
valgrind: main
	valgrind ./main

