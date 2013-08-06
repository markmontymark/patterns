# Two of Two Builder Subclasses

use Patterns::Creational::Builder::SoupBuffetBuilder;
use Patterns::common::HonoluluClamChowder;
use Patterns::common::HonoluluFishChowder;

class HonoluluSoupBuffetBuilder does SoupBuffetBuilder {

	method buildClamChowder {
		$.soupBuffet.clamChowder = HonoluluClamChowder.new()
	}
	method buildFishChowder {
		$.soupBuffet.fishChowder = HonoluluFishChowder.new() 
	}
	method setSoupBuffetName {
		$.soupBuffet.soupBuffetName = "Honolulu Soup Buffet"
	}

}
