<?

#//TinOfTeaBags.java - one composite extension - the "node"

require_once 'TeaBags.php';


class TinOfTeaBags extends TeaBags
{

	function __construct($name)
	{
		parent::construct($name);
		$this->teaBagList = [];
	}

	function countTeaBags() {
		$totalTeaBags = 0;
		foreach($this->teaBagList as $tb)
			$totalTeaBags += $tb->countTeaBags();
		return $totalTeaBags;
	}

	function add(TeaBags $tb)
	{
		$tb->parent=$this;
		return $this->teaBagList[]= $tb;
	}

	function remove($toRemove)
	{
		$newlist = [];
		$found_at_least_one = 0;
		foreach( $this->teaBagList as $tb )
		{
			if($tb == $toRemove)
				$found_at_least_one = 1;
			else
				$newlist[]= $tb;
		}
		if( $found_at_least_one)
			$this->teaBagList = $newlist;
	}

}
