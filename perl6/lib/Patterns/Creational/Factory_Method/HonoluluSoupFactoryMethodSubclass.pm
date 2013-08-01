package Patterns::Creational::Factory_Method::HonoluluSoupFactoryMethodSubclass;


#//HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods
use Moo;
extends 'Patterns::Creational::Factory_Method::SoupFactoryMethod';

sub makeBuffetName
{ 
	"Honolulu Soup Buffet"
}

sub makeClamChowder
{
	new Patterns::Creational::Factory_Method::HonoluluClamChowder();
}

sub makeFishChowder
{
	new Patterns::Creational::Factory_Method::HonoluluFishChowder();
}

1;
