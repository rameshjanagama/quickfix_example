
MF=	Makefile

CC=	g++

CFLAGS=-I/home/jramesh1/CPP/quickfix/quickfix/include -I/home/jramesh1/CPP/quickfix/
LFLAGS=-L/home/jramesh1/CPP/quickfix/quickfix/lib -lquickfix
PREPROC=

EXE=	prog
SRC=	Application.cpp \
		tradeclient.cpp

OBJ=	$(SRC:.cpp=.o)

INC=

.SUFFIXES:
.SUFFIXES:	.cpp .o

all:	$(EXE)

.cpp.o:
	$(CC) $(CFLAGS) $(PREPROC) -c $<

$(EXE):	$(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LFLAGS) 

$(OBJ):	$(SRC) $(INC) $(MF)

clean:
	rm -f *.o $(EXE) core

relink:
	rm -f $(EXE)
	$(MAKE)

run:
	./prog

