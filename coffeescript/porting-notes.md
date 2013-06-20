# Porting Notes

While porting original Java sources to CoffeeScript, there are bound to be differences in syntax and how to go about creating interfaces and abstract classes.

## Abstract Classes

For abstract class support, I'm duck typing here, and the implementation in use is to throw an exception in a constructor.

So, Class constructor includes throw == Abstract Class.  Additionally, it helps to start the class name off with 'Abstract'.

It looks like this:

	class AbstractSomething
		constructor : ->
			throw "Can't instantiate an abstract class, AbstractSomething"


## Benchmarked String "replaceAll" idiom

	 "My string ".replace(new RegExp(' ', 'gm'),'*') ## yields "My*string*"

Original Java source uses java.lang.String.replace, but apparently, according to JSPerf http://jsperf.com/replace-vs-split-join-vs-replaceall/34 when comparing:

	- replace(//g) 
	- split().join() 
	- replace(new RegExp('','gm'), '')

the third, using new RegExp, wins out.


## RequireJS circular dependency idiom

According to the Stack Overflow answer http://stackoverflow.com/a/14326040/766921, here's an idiom for getting around circular dependency problems with RequireJS

	
	define ['B'],(B) ->
		class A
			constructor : (@blah = 0) ->
			showName : (ctx, name) ->
				## Circular dependency pattern
				unless B
					B = require "B"


	define ['A'],(A) ->
		class B
			constructor : (@blah = 0) ->
			showName : (ctx, name) ->
				## Circular dependency pattern
				unless A
					A = require "A"


So, class A and class B both want to instantiate and object of the each other's class, but by default (unless I missed it somewhere) with RequireJS, this is an unresolved circular dependency.  So far, I've only had to do this with the Behavioral / State classes.
