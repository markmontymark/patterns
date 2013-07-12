# Porting Notes

While porting original Java sources to C, there are bound to be differences in syntax due to C (not C++) not having explicit language support for interface and abstract classes.

## C polymorphism

Checkout the Behavioral/Visitor pattern for one way to implement polymorphism in C.  It's not real C++ polymorphism because we're just doing C here, but the idiom looks like this:


	#include "DerivedtypeA.h"
	#include "DerivedtypeB.h"
	#include "DerivedtypeC.h"

	enum Basetype_Derived { A, B, C}
	typedef struct Basetype Basetype_t;
	struct Basetype
	{
		union
		{
			DerivedtypeA_t * a;
			DerivedtypeB_t * b;
			DerivedtypeC_t * c;
		};
		enum Basetype_Derived type;
	};

With this, I can then go on to "instantiate" A, B, or C derived types like so:

	Basetype_t * thingA = malloc( sizeof(Basetype_t) );
	thingA->type = A;
	thingA->a = malloc( sizeof( DerivedtypeA_t * ) );

The benefit of all this is that I can supply a common Basetype implementation that all Derivedtypes get "for free", and where appropriate, I can hang things off the Derivedtype's definition (another struct) that help shape the Basetype's common implementation for each Derived type.

	

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
