<?

# Two of Two Builder Subclasses

require_once 'SoupBuffetBuilder.php';

class HonoluluSoupBuffetBuilder extends SoupBuffetBuilder
{
	function buildClamChowder() { $this->soupBuffet->clamChowder = new HonoluluClamChowder() ; }
	function buildFishChowder() { $this->soupBuffet->fishChowder = new HonoluluFishChowder() ; }
	function setSoupBuffetName() { $this->soupBuffet->soupBuffetName = "Honolulu Soup Buffet"; }
}
