<?

#//BostonConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory

require_once 'AbstractSoupFactory.php';

class BostonConcreteSoupFactory extends AbstractSoupFactory
{
	function __construct()
	{
			$this->factoryLocation = "Boston";
	}

	function makeClamChowder() 
	{
		return new BostonClamChowder();
	}

	function makeFishChowder() 
	{
		return new BostonFishChowder();
	}
}
