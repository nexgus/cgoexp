# Places a static or shared (dynamic) library into ../lib

all: dynamic static

dynamic:
	gcc -fPIC -c example.c
	gcc -shared -o libexample.so example.o
	mv -f libexample.so lib
	rm -f example.o

static:
	gcc -c example.c
	ar rc libexample.a example.o
	ranlib libexample.a
	mv -f libexample.a lib
	rm -f example.o

clean:
	rm -f *.o *.so *.a
	rm -f lib/*.a lib/*.so
