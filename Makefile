SRC = src/
OBJ = obj/
BIN = bin/

all: $(BIN)argv.exe
$(OBJ):
	mkdir $(OBJ)
$(BIN):
	mkdir $(BIN)
$(OBJ)argv.o: $(SRC)argv.c $(OBJ)
	gcc -o $(OBJ)argv.o -c $(SRC)argv.c
$(BIN)argv.exe: $(OBJ)argv.o $(BIN)
	gcc -municode -o $(BIN)argv.exe $(OBJ)argv.o
clean:
	rm -rf $(OBJ)
	rm -rf $(BIN)