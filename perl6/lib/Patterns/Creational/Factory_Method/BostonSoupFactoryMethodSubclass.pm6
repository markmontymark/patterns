# - One of Two Subclass Factory Methods

use Patterns::Creational::Factory_Method::SoupFactoryMethod;
use Patterns::common::BostonClamChowder;
use Patterns::common::BostonFishChowder;

class BostonSoupFactoryMethodSubclass does SoupFactoryMethod {

	method makeBuffetName  {"Boston Soup Buffet" }
	method makeClamChowder { BostonClamChowder.new() }
	method makeFishChowder { BostonFishChowder.new() }

}
