INC = ../inc
SRC = ../src
BIN = ../bin
OBJ = ../obj

CFLAGS = -c -g -wall
LFLAGS = -o
GCC = gcc -fprofile-arcs -ftest-coverage
IFLAGS = -I $(INC)

all : $(BIN)/client $(BIN)/server

$(OBJ)/admin.o : $(SRC)/admin.cpp
	$(G++) $(CFLAGS) $(SRC)/admin.cpp $(IFLAGS)
	mv *.o ../obj
$(OBJ)/main.o : $(SRC)/main.cpp
	$(G++) $(CFLAGS) $(SRC)/main.cpp $(IFLAGS)
	mv *.o ../obj

$(OBJ)/user.o : $(SRC)/user.cpp
	 $(G++) $(CFLAGS) $(SRC)/main.cpp $(IFLAGS)
	 mv *.o ../obj

$(OBJ)/client.o : $(SRC)/client.cpp
	$(G++) $(CFLAGS) $(SRC)/client.cpp $(IFLAGS)

$(OBJ)/server.o : $(SRC)/server.cpp
	$(G++) $(CFALGS) $(SRC)/server.cpp $(IFLAGS)

$(BIN)/client : $(OBJ)/admin.o $(OBJ)/main.o $(OBJ)/user.o $(OBJ)/client.o -pthread
	$(G++) $(OBJ)/admin.o $(OBJ)/main.o $(OBJ)/user.o $(OBJ)/client.o -pthread $(LFLAGS) $(BIN)/client

$(BIN)/server : $(OBJ)/server.o -lpthread
	$(G++) $(OBJ)/server.o -lpthread $(LFLAGS) $(BIN)/server

clean:
	rm -f $(OBJ)/*.o $(BIN)/client.$(BIN)/server

