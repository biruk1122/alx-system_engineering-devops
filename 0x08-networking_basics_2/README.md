Networking basics #1
Tasks
0. Change your home IP
Write a Bash script that configures an Ubuntu server with the below requirements.

Requirements:

localhost resolves to 127.0.0.2
facebook.com resolves to 8.8.8.8.


1. Show attached IPs
Write a Bash script that displays all active IPv4 IPs on the machine it’s executed on.

Example:

sylvain@ubuntu$ ./1-show_attached_IPs | cat -e
10.0.2.15$
127.0.0.1$
sylvain@ubuntu$
Obviously, the IPs displayed may be different depending on which machine you are running the script on.

Note that we can see our localhost IP :)


2. Port listening on localhost
Write a Bash script that listens on port 98 on localhost.

Terminal 0

Starting my script.

sylvain@ubuntu$ sudo ./100-port_listening_on_localhost
Terminal 1

Connecting to localhost on port 98 using telnet and typing some text.

sylvain@ubuntu$ telnet localhost 98
Trying 127.0.0.2...
Connected to localhost.
Escape character is '^]'.
Hello world
test
Terminal 0

Receiving the text on the other side.

sylvain@ubuntu$ sudo ./100-port_listening_on_localhost
Hello world
test
For the sake of the exercise, this connection is made entirely within localhost. This isn’t really exciting as is, but we can use this script across networks as well. Try running it between your local PC and your remote server for fun!

As you can see, this can come in very handy in a multitude of situations. Maybe you’re debugging socket connection issues, or you’re trying to connect to a software and you are unsure if the issue is the software or the network, or you’re working on firewall rules… Another tool to add to your debugging toolbox!
