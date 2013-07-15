<?

#//SoupSpoon- The Concrete Prototype extending the AbstractSpoon Prototype

require_once 'AbstractSpoon.php';

class SoupSpoon extends AbstractSpoon
{
	function __construct()
	{
		$this->spoonName='Soup Spoon';
	}
}
