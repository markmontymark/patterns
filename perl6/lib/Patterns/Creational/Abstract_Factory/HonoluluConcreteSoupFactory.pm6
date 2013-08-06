# HonoluluConcreteSoupFactory - One of Two concrete factories extending the abstract factory


use Patterns::Creational::Abstract_Factory::AbstractSoupFactory;
use Patterns::common::HonoluluClamChowder;
use Patterns::common::HonoluluFishChowder;


class HonoluluConcreteSoupFactory does AbstractSoupFactory {

	method new
	{
		return self.bless( * , :factoryLocation('Honolulu') );
	}

	method makeClamChowder { HonoluluClamChowder.new() }
	method makeFishChowder { HonoluluFishChowder.new() }

}

