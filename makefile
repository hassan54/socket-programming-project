all:
	make server
	make peer

server: server.cpp
	g++ server.cpp -o server

peer: peer.cpp
	g++ peer.cpp -o peer

clean:
	rm server peer
