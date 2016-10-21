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
  publish and will keep the downloaded files



Context:
Implemented a simple 'Napster' like P2P system for file search and retrieval. A user (peer) joins a
P2P system by contacting a central server (server). The peer publishes the files she wishes to share by
specifying the same to the central server. The peer searches for a file, again by contacting the central
server. Based on input from the server, peer fetches the file from another peer (who has the file).


Code Functionality:
1. There is a single central server (server.c) and any number of peers. Peers are different instances of
the same code peer.c. The server  can handle multiple peers simultaneously.This has been implemented by using 'select' system call.
2. All peers know the central server details. This can be accomplished via a command-line
argument. Example: ./peer server-ip server-port
3. Each peer also has its own local folder named 'p2p-files' which is used to store files it wishes
to publish as well as ones which it fetches from others.
4. Each peer supports duplex operation i.e. it transmits (upload to another
peer) as well as receive files (download from another peer) simultaneously. Multiple uploads
and downloads are also supported.
5. The code works over any type of file: pdfs, jpg, png, txt etc.


Every peer implemented three functions: join, publish and fetch. Search functionality is subsumed
within fetch (explained below).
1. Join: This should happen automatically when the peer code is run via “./peer server-ip
server-port”. The peer should inform the central server of its existence.
2. Publish: The peer should have an appropriate interface (stdin, or GUI) to take necessary
arguments to achieve the publish functionality. For example, you should be able to
specify the name of the file and the path where the file is. The peer then will use this
information to contact the server as well as do any needed local housekeeping.
3. Fetch: The peer should have an appropriate interface (stdin, or GUI) to take necessary
arguments to achieve the fetch functionality as well. For example, you should be able to
specify the name of the file you want and the path where the file is to be stored. In fact
the peer should ask if it is a fetch or publish option you desire and act accordingly.
If it is a fetch operation, the peer should first contact the server to determine which peer
has the file (search) and then initiate a connection to that peer to get the file. If there aremore than one peer who have the file, the selection can be random. If there is no file
available, it should print the same.
