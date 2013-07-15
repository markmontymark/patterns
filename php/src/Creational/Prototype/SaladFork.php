<?

#//SaladFork.java - The Concrete Prototype extending the AbstractFork Prototype

require_once 'AbstractFork.php';

class SaladFork extends AbstractFork
{
	function __construct()
	{
		$this->forkName='Salad Fork';
	}
}
