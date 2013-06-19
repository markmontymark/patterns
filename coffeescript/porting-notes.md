# Porting Notes

While porting original Java sources to CoffeeScript, there are bound to be differences in syntax and how to go about creating interfaces and abstract classes.

## Abstract Classes

For abstract class support, I'm duck typing here, and the implementation in use is to throw an exception in a constructor.

So, Class constructor includes throw == Abstract Class.  Additionally, it helps to start the class name off with 'Abstract'.

It looks like this:

	class AbstractSomething
		constructor : ->
			throw "Can't instantiate an abstract class, AbstractSomething"


