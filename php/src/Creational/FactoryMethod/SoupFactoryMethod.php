<?

require_once 'src/common/require_all.php';

class SoupFactoryMethod
{
	function makeSoupBuffet() { return new SoupBuffet(); }
	function makeChickenSoup() { return new ChickenSoup(); }
	function makeClamChowder() { return new ClamChowder(); }
	function makeFishChowder() { return new FishChowder(); }
	function makeMinnestrone() { return new Minnestrone(); }
	function makePastaFazul() { return new PastaFazul(); }
	function makeTofuSoup() { return new TofuSoup(); }
	function makeVegetableSoup() { return new VegetableSoup(); }
	function makeBuffetName() { return "Soup Buffet"; }

}
