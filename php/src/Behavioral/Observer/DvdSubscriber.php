<?

#//DvdSubscriber - the observer

class DvdSubscriber
{

	public $name;

	function __construct($name)
	{
		$this->name = $name ;
	} 
   
	function newDvdRelease($release,$subscriberName)
	{
		return "Hello " . 
			$this->name . ", subscriber to the " . 
			$subscriberName . " DVD release list.  The new Dvd " . 
			$release->name . " will be released on " . 
			$release->releaseMonth . "/" . 
			$release->releaseDay . "/" . 
			$release->releaseYear . ".";
	}

	function updateDvdRelease($release,$subscriptionListName)
	{
		return "Hello " . 
			$this->name .  ", subscriber to the " .  
			$subscriptionListName .  " DVD release list.  The following DVDs release has been revised: " .  
			$release->name . " will be released on " .  
			$release->releaseMonth . "/" .  
			$release->releaseDay . "/" .  
			$release->releaseYear . ".";
	}   
}

