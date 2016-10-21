Files Included:
server.cpp -The Main server file
peer.cpp   -The peer file
README.txt
makefile


1.server.cpp after compilation will create executable file server.
  server will receive 2 command line argument- server IP and PORT No.
	eg: ./server server-ip server-port


2.peer.cpp after compilation will create executable file peer.
  peer will receive 3 command line argument- MainServer IP,MainServer PORT No and peer-server ip.
	eg: ./peer server-ip server-port peer-server-ip

3.For each peer on each machine there has to be a folder called p2p-files.From which the peer will 
  publish and will keep the downloaded files.
