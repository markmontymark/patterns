#//CommandAbstract.java - the Command

define [],() ->
	class CommandAbstract
		constructor : -> throw "Can't instantiate an abstract class, CommandAbstract"
		execute : -> throw "Unimplemented method, CommandAbstract.execute"
	
