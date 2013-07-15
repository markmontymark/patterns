<?

#//BostonSoupBuffetBuilder.java - One of Two Builder Subclasses

require_once 'SoupBuffetBuilder.php';

class BostonSoupBuffetBuilder extends SoupBuffetBuilder
{
	function buildClamChowder() { $this->soupBuffet->clamChowder = new BostonClamChowder() ; }
	function buildFishChowder() { $this->soupBuffet->fishChowder = new BostonFishChowder() ; }
	function setSoupBuffetName() { $this->soupBuffet->soupBuffetName = "Boston Soup Buffet"; }
}
