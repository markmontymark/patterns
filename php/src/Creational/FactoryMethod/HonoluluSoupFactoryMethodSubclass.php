<?

#//HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods

require_once 'SoupFactoryMethod.php';

class HonoluluSoupFactoryMethodSubclass extends SoupFactoryMethod
{

	function makeBuffetName() { return "Honolulu Soup Buffet"; }
	function makeClamChowder() { return new HonoluluClamChowder(); } 
	function makeFishChowder() { return new HonoluluFishChowder(); }

}
