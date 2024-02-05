
FILE=main
all: run
compile: $(FILE).c
	$(CC) $(FILE).c -o $(FILE)
run: $(FILE).c
	$(CC) -Wall $(FILE).c -o $(FILE)
	./$(FILE)
debug: $(FILE).c
	$(CC) -g -o $(FILE) $(FILE).c
	gdb ./$(FILE)
thread: $(FILE).c
	$(CC) -lpthread $(FILE).c -o $(FILE)
	./$(FILE)

clean:
	rm $(FILE)
