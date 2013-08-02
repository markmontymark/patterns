package Patterns::Creational::Factory_Method::SoupFactoryMethod;

use Moo;
        
sub makeSoupBuffet {
	new Patterns::Creational::Factory_Method::SoupBuffet
}

sub makeChickenSoup {
	new Patterns::Creational::Factory_Method::ChickenSoup
}
sub makeClamChowder {
	new Patterns::Creational::Factory_Method::ClamChowder
}
sub makeFishChowder {
	new Patterns::Creational::Factory_Method::FishChowder
}
sub makeMinnestrone {
	new Patterns::Creational::Factory_Method::Minnestrone
}
sub makePastaFazul {
	new Patterns::Creational::Factory_Method::PastaFazul
}
sub makeTofuSoup {
	new Patterns::Creational::Factory_Method::TofuSoup
}
sub makeVegetableSoup {
	new Patterns::Creational::Factory_Method::VegetableSoup
}

sub makeBuffetName {
	"Soup Buffet"
}

1;
