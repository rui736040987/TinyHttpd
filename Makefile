all: httpd client httpd_socket
LIBS = -lpthread #-lsocket

httpd: httpd.c
	gcc -g -W -Wall -o $@ $< $(LIBS)
httpd_socket: httpd_socket.c
	gcc -g -W -Wall -o $@ $< $(LIBS)
	

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd httpd_socket
