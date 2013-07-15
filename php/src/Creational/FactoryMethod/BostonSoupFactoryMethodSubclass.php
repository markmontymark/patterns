<?

# - One of Two Subclass Factory Methods

require_once 'SoupFactoryMethod.php';

class BostonSoupFactoryMethodSubclass extends SoupFactoryMethod
{

	function makeBuffetName() { return "Boston Soup Buffet"; }
	function makeClamChowder() { return new BostonClamChowder(); }
	function makeFishChowder() { return new BostonFishChowder(); }

}
