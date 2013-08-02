package Patterns::Creational::Factory_Method::BostonSoupFactoryMethodSubclass;

# - One of Two Subclass Factory Methods
use Moo;
extends 'Patterns::Creational::Factory_Method::SoupFactoryMethod';

sub makeBuffetName {
return "Boston Soup Buffet";
}
sub makeClamChowder {
return new Patterns::Creational::Factory_Method::BostonClamChowder();
}
sub makeFishChowder {
return new Patterns::Creational::Factory_Method::BostonFishChowder();
}

1;
