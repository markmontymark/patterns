Patterns (perl6 version)

RUNNING THE TESTS - on Ubuntu 12

Install rakudo

	sudo apt-get instal rakudo

Or else, check out how to get Rakudo here

	http://rakudo.org/how-to-get-rakudo/

Use panda to install Test

	panda install Test

Finally, get ufo, for creating a handy Makefile

	git clone git@github.com:masak/ufo.git
	cp -pr ufo/bin/ufo $HOME/.perl6/*/bin/


After installing all that above, run 'ufo' which gives you a Makefile (WARNING:  seems to take a long time to run)

	git clone git@github.com:markmontymark/patterns.git
	cd patterns/perl6
	ufo # go get a coffee, have a chat at the water cooler, pet your cat or dog, etc.
	
Assuming that went ok, then the usual steps:

	make
	make test

If you want to see actual running tests, I've created a shortcut file, `test.sh` for running tests that I know to have completed.

TODO

Very much to do.  Don't expect `make` to compile everything.  What I've done is copy the perl/ to perl6/, so mostly this is all Perl5 code.  Once I get that ported over to Perl6, we'll be ready to run tests.  In the mean time, you can run

	./test.sh

... to see what I've got working so far.

