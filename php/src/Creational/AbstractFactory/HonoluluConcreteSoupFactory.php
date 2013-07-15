<?

#//HonoluluConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory

require_once 'AbstractSoupFactory.php';


class HonoluluConcreteSoupFactory extends AbstractSoupFactory
{
	function __construct()
	{
			$this->factoryLocation = "Honolulu";
	}

	function makeClamChowder() 
	{
		return new HonoluluClamChowder();
	}

	function makeFishChowder() 
	{
		return new HonoluluFishChowder();
	}
}
