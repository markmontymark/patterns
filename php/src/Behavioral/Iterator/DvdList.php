
<?
#//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)

require_once 'DvdListIterator.php';

class DvdList
{

	private $titles;
	private $titleCount;
	private $arraySize;
	private $iterator;

	function __construct()
	{
		$this->titles = [];
		$this->titleCount = 0;
		$this->arraySize = 0;
	}

	function getList()
	{
		return $this->titles;
	}

	function append($title)
	{
		$this->titles[] = $title;
		$this->titleCount++;
	}

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	function remove($item)
	{
		$found = 0;
		$foundI = -1;
		$i = 0;
		foreach($this->titles as $title)
		{
			if($title == $item)
			{
				$foundI = $i;
				break;
			}
			$i++;
		}
		if($foundI != -1 )
		{
			$this->titleCount--;
			$t = $this->titles;
			array_splice($t,$foundI,1);		
		}
	}

	function getTitleCount() { return $this->titleCount; }

	function createIterator()
	{	
		if($this->iterator)
			return $this->iterator ;
		$this->iterator = new DvdListIterator($this);
		return $this->iterator;
	}

}


 
