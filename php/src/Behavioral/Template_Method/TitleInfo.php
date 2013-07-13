<?

abstract class TitleInfo
{

	abstract function getTitleBlurb();

	private $titleName;

	#//the "template method" - 
	#   //  calls the concrete class methods, is not overridden
	function ProcessTitleInfo ()
	{
		return implode('', array(
			$this->getTitleBlurb(),
			$this->getRegionInfo() ));
	}  
		
	function setTitleName($t) { $this->titleName = $t; }
	function getTitleName() { return $this->titleName; }

	#   //this is a "hook operation", which may be overridden, 
	#   //hook operations usually do nothing if not overridden 
	function getRegionInfo ()
	{
		return " ";
	}

}


