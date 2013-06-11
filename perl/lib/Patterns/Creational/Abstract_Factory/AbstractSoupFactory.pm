package Patterns::Creational::Abstract_Factory::AbstractSoupFactory;

use Moo;
has factoryLocation => (is =>'ro');
    
sub makeChickenSoup {
	new Patterns::Creational::Abstract_Factory::ChickenSoup
}
sub makeClamChowder {
	new Patterns::Creational::Abstract_Factory::ClamChowder
}
sub makeFishChowder {
	new Patterns::Creational::Abstract_Factory::FishChowder
}     
sub makeMinnestrone {
	new Patterns::Creational::Abstract_Factory::Minnestrone
}
sub makePastaFazul {
	new Patterns::Creational::Abstract_Factory::PastaFazul
}
sub makeTofuSoup {
	new Patterns::Creational::Abstract_Factory::TofuSoup
}
sub makeVegetableSoup {
	new Patterns::Creational::Abstract_Factory::VegetableSoup
}

1;
