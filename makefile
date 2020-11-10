
CC=gcc
AR=ar
FLAGS= -Wall -g
LIBS= power.o basicMath.o

all: mains maind 

mymaths: $(LIBS)
	$(AR) -rcs libmyMath.a $(LIBS)
mymathd:$(LIBS)
	$(CC) -shared -o libmyMath.so $(LIBS)
mains: main.o mymaths
	$(CC) $(FLAGS) -o mains main.o libmyMath.a
maind: main.o mymathd
	$(CC) $(FLAGS) -o maind main.o ./libmyMath.so 
main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c 

.PHONY: all clean 

clean: 	
	rm -f *.o *.a *.so mains maind
