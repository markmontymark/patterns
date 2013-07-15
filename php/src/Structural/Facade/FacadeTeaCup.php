<?
#//FacadeTeaCup.java - one of three classes the facade calls

class FacadeTeaCup {

public $teaBagIsSteeped;
public $water;
public $teaBag;
    
function __construct()
{
	$this->teaBagIsSteeped=0;
}    
   
function steepTeaBag ()
{
	if($this->teaBag && 
		$this->water && 
		$this->water->isBoiling
	) 
	{
		$this->teaBagIsSteeped = 1;
		return "the tea is steeping in the cup";
	} 
	else 
	{
		$this->teaBagIsSteeped(0);
		return "the tea is not steeping in the cup";
	}           
}
   
function toString()
{
	if($this->teaBagIsSteeped)
		return "A nice cuppa tea!" ;

	$tempString = "A cup with ";
	if ($this->water)
		$tempString .=  $this->water->isBoiling ? "boiling water " : "cold water ";
	else 
		$tempString .= "no water ";

	$tempString .= $this->teaBag ? "and a tea bag" : "and no tea bag";
	return $tempString;
}

}
