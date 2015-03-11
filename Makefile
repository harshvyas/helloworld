all: helloworld.cc
	g++ -g -Wall -o helloworld helloworld.cc

package: helloworld
	mkdir -p packaging/helloworld/DEBIAN
	mkdir -p packaging/helloworld/usr/bin
	cp control packaging/helloworld/DEBIAN/
	cp helloworld packaging/helloworld/usr/bin/
	dpkg-deb --build packaging/helloworld
	mv packaging/helloworld.deb helloworld-1.0_amd64.deb

clean:
	$(RM) helloworld
