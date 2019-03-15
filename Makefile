ifeq ($(OS), Windows_NT)
	EXE_NAME=argv.exe
	LDFLAGS += -municode
	CC = gcc
else
	EXE_NAME=argv
endif

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
EXE = $(BIN_DIR)/$(EXE_NAME)

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

.PHONY: all clean

all: $(EXE)

$(EXE): $(OBJ) $(BIN_DIR)
	$(CC) $(LDFLAGS) $(OBJ) $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(OBJ_DIR)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

$(BIN_DIR):
	mkdir $@

clean:
	rm -rf $(OBJ_DIR)
	rm -rf $(BIN_DIR)
