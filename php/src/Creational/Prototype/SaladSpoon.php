<?

#//SaladSpoon.java - The Concrete Prototype extending the AbstractSpoon Prototype

require_once 'AbstractSpoon.php';

class SaladSpoon extends AbstractSpoon
{
	function __construct()
	{
		$this->spoonName='Salad Spoon';
	}
}
