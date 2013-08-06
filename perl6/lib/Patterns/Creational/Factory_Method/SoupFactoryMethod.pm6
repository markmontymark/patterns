
use Patterns::common::SoupBuffet;

role SoupFactoryMethod {

	method makeSoupBuffet { SoupBuffet.new() }

	method makeBuffetName { 'Soup Buffet' }
	method makeChickenSoup { ChickenSoup.new() }
	method makeClamChowder { ClamChowder.new() }
	method makeFishChowder { FishChowder.new() }
	method makeMinnestrone { Minnestrone.new() }
	method makePastaFazul { PastaFazul.new() }
	method makeTofuSoup { TofuSoup.new() }
	method makeVegetableSoup { VegetableSoup.new() }


}
