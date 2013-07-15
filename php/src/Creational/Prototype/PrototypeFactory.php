<?

require_once 'AbstractFork.php';
require_once 'AbstractSpoon.php';

class PrototypeFactory
{
	public $prototypeSpoon;
	public $prototypeFork;

	function __construct($spoon,$fork)
	{
		$this->prototypeSpoon = $spoon;
		$this->prototypeFork	= $fork;
	}

	function makeSpoon()
	{
		return clone($this->prototypeSpoon);
	}

	function makeFork()
	{
		return clone($this->prototypeFork);
	}

}
