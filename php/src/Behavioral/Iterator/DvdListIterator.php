<?
  
require_once 'IteratorInf.php';

 
class DvdListIterator implements IteratorInf
{
	private $currentPosition;
	private $list;

	function __construct($list)
	{
		$this->list = $list;
		$this->currentPosition = 0;
	}
			 
	function first()
	{
		$this->currentPosition = 0;
	}
			 
	function next()
	{
		if($this->currentPosition < ($this->list->getTitleCount()-1))
			$this->currentPosition++;
	}
			 
	function isDone ()
	{
		return $this->currentPosition >= ($this->list->getTitleCount()-1);
	}
			 
	function currentItem()
	{
		return $this->list->getList()[ $this->currentPosition ];
	}


}
