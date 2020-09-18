TARGET = hello_world
#CCFLAGS = -g -lstdc++ -save-temps
CCFLAGS = -g -save-temps
# -g directs the compiler to include debugging info in taret
# -lstdc++ links against the standard C++ library
# -save-temps saves intermediate temporary files

division: division.c
	#gcc -o division division.c -g
	gcc -o division division.c -g -DNDEBUG # flag makes assert macro a NOP

hello_world: hello_world.c
	#gcc -o hello_world hello_world.cpp -g -lstdc++
	gcc -o $@ $< ${CCFLAGS}

factorial: factorial.c
	gcc -o $@ $< ${CCFLAGS}

listas_ligadas: listas_ligadas.c
	gcc -o $@ $< ${CCFLAGS}

HelloWorldApp.class: HelloWorldApp.java
	javac HelloWorldApp.java
	java HelloWorldApp

all: hello_world division HelloWorldApp.class factorial

clean:
	rm -f hello_world division HelloWorldApp.class factorial *.o *.i *.s
