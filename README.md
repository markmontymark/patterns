# Purpose

Multiple language ports of GoF patterns

# Attribution

The base of all these (someday complete) ports of GoF patterns originally come from Larry Truett's Java Design Patterns at http://www.fluffycat.com/Java-Design-Patterns/
Much thanks to Larry for allowing to me to start off this project with his Java code base.

# Languages / Status

- Perl - complete
- CoffeeScript - complete
- JavaScript - complete
- C - complete
- PHP - complete
- Python - complete
- Perl6 - complete
- Ruby - complete
- C\# - complete
- Java - complete
- Go - complete
- Clisp - complete
- Clojure - complete

TODO

- Add Cake Pattern and/or a dependency injection example foreach lang, starting point http://jonasboner.com/2008/10/06/real-world-scala-dependency-injection-di/

- Add ImmutableObject pattern (only done for Java right now)

- Add Null Object pattern

- Add Tail Recursion pattern (maybe this is more an idiom, than an official pattern?)

- Fix Builder pattern to offer only getters (remove setters)

- Erlang

- Scala 

- Java 1.7 

	- partial 1.7 support in java/ already
	- won't separate this out as a java7/ dir, like i did with perl/ and perl6/ because perl5 vs perl6 feels like a larger change than java 1.4 vs java 1.7
		

# Quick start

## Java

Install Java

Install Ant

	cd java
	ant

If Java sources build successfully:

	./scripts-local/run-java-tests.pl

## Perl

Install Perl

	cd perl
	perl Build.PL
	./Build
	./Build test

## CoffeeScript

Install Node.js

	sudo npm install -g coffee-script  # need this only once per system
	sudo npm install -g grunt-cli  # need this only once per system
	git clone git@github.com:markmontymark/patterns.git
	cd patterns/coffeescript
	npm install # need this only once per git clone
	grunt

## C

Built with gcc on a Ubuntu box

	$ gcc --version
	(Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2
	$ uname -a
	Linux 3.5.0-17-generic #28-Ubuntu SMP Tue Oct 9 19:31:23 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux

Already had gcc and autotools installed, so ping me if you need help w/ setup on Linux.

## PHP

Again, built on a Ubuntu box which makes this very quick and easy to setup.  I'm using PHP 5.4.26 and testing with PHPUni

	$ php --version | head -1
	PHP 5.4.6-1ubuntu1.2 (cli) (built: Mar 11 2013 14:57:54) 
	$ phpunit --version | head -1
	PHPUnit 3.6.10 by Sebastian Bergmann.

Installed using apt-get as:
	
	$ sudo apt-get install php5
	$ sudo apt-get install phpunit


## Python

Install Python 3.x

	sudo apt-get install python3
	## then, I already had python2.7 so I munged my path in .bashrc
	mkdir $HOME/.alternatives
	ln -s /usr/bin/python3 $HOME/.alternatives/python
	export PATH=$HOME/.alternatives:$PATH

This way, if I want to stop using python3, I just muck with $PATH instead of changing symlinks

Install nosetests

	sudo apt-get install python-nose	

Running the tests for Python 3

	cd python
	nosetests

TODO
	
This is by far the most Python I have ever wrote, so probaly has tons of bad habits or bad idioms, so should fix that eventually.

## Perl6

Install Perl6

See notes in perl6/README.md as they're *not* just a couple of steps...

Once that's sorted:

	ufo
	make
	./test.sh


## Ruby

Install Ruby, RubyGems, a custom Tapper test module

	sudo apt-get install ruby1.9.1
	sudo apt-get install rubygems

### Tapper Setup

   git clone git@github.com:judofyr/tapper.git
   cd tapper
   gem build tapper.gemspec
   sudo gem install --local tapper-0.0.1.gem


## Running the ruby tests

   git clone git@github.com:markmontymark/patterns.git
   cd patterns/ruby
   make
   make test
   make loudtest
   make timetest

	
## C sharp

Install Mono dev tools and use a Makefile (for now) for building and running tests

	sudo apt-get install mono-complete
	cd patterns/csharp
	make
	make test

*Note* I wrote this for Linux/Mono so YMMV for Windows/Mac

## Go

	sudo apt-get install golang-go
	cd patterns/go/behavioral/chainofresponsibility
	go test 


## clisp

	sudo apt-get install clisp
	sudo apt-get install cl-quicklisp
	cd clisp
	make
	
	
	


# Patterns

GoF book groups software dev patterns into 3 groups:  Creational, Structural, and Behavioral.


# Creational Patterns

*Abstract Factory* 	Sets of methods to make various objects.

*Builder* 	Make and return one object various ways.

*Factory Method* 	Methods to make and return components of one object various ways.

*Prototype* 	Make new objects by cloning the objects which you set as prototypes.

*Singleton* 	A class distributes the only instance of itself.


# Structural Patterns

*Adapter* 	A class extends another class, takes in an object, and makes the taken object behave like the extended class.

*Bridge* 	An abstraction and implementation are in different class hierarchies.

*Composite* 	Assemble groups of objects with the same signature.

*Decorator* 	One class takes in another class, both of which extend the same abstract class, and adds functionality.

*Facade* 	One class has a method that performs a complex process calling several other classes.

*Flyweight* 	The reusable and variable parts of a class are broken into two classes to save resources.

*Proxy* 	One class controls the creation of and access to objects in another class.

# Behavorial Patterns

*Chain Of Responsibility* 	A method called in one class can move up a hierarchy to find an object that can properly execute the method.

*Command* 	An object encapsulates everything needed to execute a method in another object.

*Interpreter* 	Define a macro language and syntax, parsing input into objects which perform the correct opertaions.

*Iterator* 	One object can traverse the elements of another object.

*Mediator* 	An object distributes communication between two or more objects.

*Memento* 	One object stores another objects state.

*Observer* 	An object notifies other object(s) if it changes.

*State* 	An object appears to change its` class when the class it passes calls through to switches itself for a related class.

*Strategy*	An object controls which of a family of methods is called. Each method is in its` own class that extends a common base class.

*Template Method*	An abstract class defines various methods, and has one non-overridden method which calls the various methods.

*Visitor* 	One or more related classes have the same method, which calls a method specific for themselves in another class.


