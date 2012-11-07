webserver: webserver.c libuv/libuv.a http-parser/http_parser.o
	$(CC) -I libuv/include \
	-lrt -lm -lpthread -o \
	webserver webserver.c \
	libuv/libuv.a http-parser/http_parser.o

libuv/libuv.a:
	$(MAKE) -C libuv

http-parser/http_parser.o:
	$(MAKE) -C http-parser http_parser.o

clean:
	$(MAKE) -C libuv clean
	$(MAKE) -C http-parser clean
	-rm libuv/libuv.a
	-rm http-parser/http_parser.o
	-rm webserver
