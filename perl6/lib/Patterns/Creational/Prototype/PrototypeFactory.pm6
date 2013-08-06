use Patterns::Creational::Prototype::AbstractFork;
use Patterns::Creational::Prototype::AbstractSpoon;

class PrototypeFactory {

	has AbstractSpoon $.prototypeSpoon;#, isa=>sub{ref $_[0]'Patterns::Creational::Prototype::AbstractSpoon');
	has AbstractFork  $.prototypeFork;#, isa=>'Patterns::Creational::Prototype::AbstractFork');

	method new( AbstractSpoon :$spoon, AbstractFork:$fork )
	{
		return self.bless( * , :prototypeSpoon($spoon), :prototypeFork($fork) );
	}

	method makeSpoon
	{
		$.prototypeSpoon.clone()
	}

	method makeFork
	{
		$.prototypeFork.clone()
	}

}
