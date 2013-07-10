# Getting started

Here's what you need to get going...

	Gcc
	Autotools

I'm on Ubuntu 12.10 and the default install already had all I needed on it, but if you have trouble
compiling, you can try out:

	sudo apt-get install build-essential



I'm going to be using Autotools for the usual building and test steps:

	./configure
	make
	make check


Not an Autotools expert yet, but have done a 

	make dist

...which makes a nice *c-patterns-1.0.tar.gz* file that I have been able to then:

	tar xzf c-patterns-1.0.tar.gz
	cd c-patterns-1.0
	./configure
	make
	make check

and get all to be built and tested completely.  If you have issues along the way, ping me and I'll see if I can help.



