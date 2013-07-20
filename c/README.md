# Getting started

Here's what you need to get going...

	Gcc
	Autotools or scons (scons is much much easier to setup and dev with)

## Building with scons

	sudo apt-get install scons

	cd patterns/c
	scons
	./test.sh

## Building with Autotools (deprecated)

**I moved all the autotools files to a autotools/ dir.  You can `cp -pr autotools/* .` to place all the Makefile.am files in their proper place'

Building and dev with autotools isn't so bad, though it took me literally less than 15 minutes to 
install scons, whip up my first SConstruct file and get a build.   Autotools is well, I'm not a 
full-on bit-twiddler with Make, but that whole M4 stuff is just something in its own world.  
With Scons, you're writing Python which seems more applicable to tasks other than just compiling/building
C code that's a bit of push in scons' direction.  Anyways....

	
I'm on Ubuntu 12.10 and the default install already had all I needed on it as far as Autotools goes, but if you have trouble
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



