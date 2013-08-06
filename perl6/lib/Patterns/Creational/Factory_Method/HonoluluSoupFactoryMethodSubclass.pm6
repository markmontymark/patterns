#//HonoluluSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods

use Patterns::common::HonoluluClamChowder;
use Patterns::common::HonoluluFishChowder;

use Patterns::Creational::Factory_Method::SoupFactoryMethod;
class HonoluluSoupFactoryMethodSubclass does SoupFactoryMethod {

	method makeBuffetName  {"Honolulu Soup Buffet" }
	method makeClamChowder { HonoluluClamChowder.new() }
	method makeFishChowder { HonoluluFishChowder.new() }

}
