# BostonConcreteSoupFactory - One of Two concrete factories extending the abstract factory

use Patterns::Creational::Abstract_Factory::AbstractSoupFactory;
use Patterns::common::BostonClamChowder;
use Patterns::common::BostonFishChowder;

class BostonConcreteSoupFactory does AbstractSoupFactory {

	method new
	{
		return self.bless( * , :factoryLocation('Boston') );
	}

	method makeClamChowder { BostonClamChowder.new() }
	method makeFishChowder { BostonFishChowder.new() }

}

