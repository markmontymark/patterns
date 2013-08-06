use Patterns::common::SoupBuffet;

role AbstractSoupFactory {

	has Str $.factoryLocation is rw;
    
	method makeChickenSoup { ChickenSoup.new() }
	method makeClamChowder { ClamChowder.new() }
	method makeFishChowder { FishChowder.new() }     
	method makeMinnestrone { return Minnestrone.new() }
	method makePastaFazul { PastaFazul.new() }
	method makeTofuSoup { TofuSoup.new() }
	method makeVegetableSoup { VegetableSoup.new() }

}
