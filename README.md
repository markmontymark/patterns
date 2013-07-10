# Purpose

Multiple language ports of GoF patterns

# Attribution

The base of all these (someday complete) ports of GoF patterns originally come from Larry Truett's Java Design Patterns at http://www.fluffycat.com/Java-Design-Patterns/
Much thanks to Larry for allowing to me to start off this project with his Java code base.

# Languages / Status

	Java - complete (copied, see Attribution)
	Perl - complete
	CoffeeScript - complete
	JavaScript - complete (using CoffeeScript's compilation, plus removed Coffeescript dependency in Gruntfile.js and package.json)
	C - complete
	C++ - incomplete

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



# Patterns

GoF book groups software dev patterns into 3 groups:  Creational, Structural, and Behavioral.


# Creational Patterns

*Abstract Factory* 	Sets of methods to make various objects.

*Builder* 	Make and return one object various ways.

*Factory* Method 	Methods to make and return components of one object various ways.

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

*Strategy* 	An object controls which of a family of methods is called. Each method is in its` own class that extends a common base class.

*Template* 	An abstract class defines various methods, and has one non-overridden method which calls the various methods.

*Visitor* 	One or more related classes have the same method, which calls a method specific for themselves in another class.


