# Porting Notes

While porting original Java sources to C, there are bound to be differences in syntax due to C (not C++) not having explicit language support for interface and abstract classes.

## C "interfaces"

For interface support, and like how I've "implemented" interfaces in CoffeeScript, I'm going to be duck typing again here.  As a first crack at it, I'm going to follow suggestions at http://wiki.answers.com/Q/What_is_an_interface_in_C and implement a C interface like this:


	struct InterfaceThing 
	{
		int * ( methodA ) ( int ) = 0;
		char * ( methodb ) () = 0;
	};

And an implementor of InterfaceThing could look like this:

	struct TheRealThing 
	{
		int * ( methodA ) ( int );
		char * ( methodb ) ();
		char * memberVarA;
		char * memberVarB;
	};

This works as long as implementors follow this rule: 
	
	Retain order of the interface struct members

You can read more about it at the link, http://wiki.answers.com/Q/What_is_an_interface_in_C
