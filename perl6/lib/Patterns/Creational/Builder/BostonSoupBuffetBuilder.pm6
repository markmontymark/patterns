#//BostonSoupBuffetBuilder - One of Two Builder Subclasses

use Patterns::Creational::Builder::SoupBuffetBuilder;
use Patterns::common::BostonClamChowder;
use Patterns::common::BostonFishChowder;

class BostonSoupBuffetBuilder does SoupBuffetBuilder {

	method buildClamChowder {
		$.soupBuffet.clamChowder = BostonClamChowder.new() ;
	}
	method buildFishChowder {
		$.soupBuffet.fishChowder = BostonFishChowder.new() ;
	}
	method setSoupBuffetName {
		$.soupBuffet.soupBuffetName = "Boston Soup Buffet";
	}

}

