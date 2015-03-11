all: helloworld.cc
	g++ -g -Wall -o helloworld helloworld.cc

clean:
	$(RM) helloworld
