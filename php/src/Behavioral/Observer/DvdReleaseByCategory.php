<?

## //DvdReleaseByCategory - the subject
#//(the class which is observed)

class DvdReleaseByCategory
{

	public $categoryName;
	public $subscribers;
	public $releases;

	function __construct($categoryName)
	{
		$this->categoryName = $categoryName;
		$this->subscribers = array();
		$this->releases = array();
	}
	
   
	function addSubscriber($subscriber)
	{
		$this->subscribers[] = $subscriber;
	}
  
	function removeSubscriber($subscriber)
	{
		$i = 0;
		$found_i = -1;
		foreach ( $this->subscribers as $s )
		{
			if($subscriber == $s)
			{
				$found_i = $i;
				break;
			}
			$i++;
		}
		if($found_i != -1 )
		{
			array_splice( $this->subscribers,$found_i,1);
			return 1;
		}
		return 0;
	}
   
	function newDvdRelease($release)
	{
		$this->releases[]= $release;
		return $this->notifySubscribersOfNewDvd($release);
	}
   
	function updateDvd($release)
	{
		$dvdUpdated = 0;
		foreach( $this->releases as $r )
		{	
			if ($release->serialNumber == $r->serialNumber) 
			{
				$r->updateRelease($release); ## add retval of true/false to denote if any data changed -- ie dont notify if no real change was made
				$dvdUpdated = 1;
				break;
			}
		}
		if ($dvdUpdated) 
			return $this->notifySubscribersOfUpdate($release);
		else 
			return $this->newDvdRelease($release);
	}
   
	function notifySubscribersOfNewDvd($release)
	{
		$retval = array();
		foreach( $this->subscribers as $s )
			$retval[] = $s->newDvdRelease($release,$this->categoryName) ;
		return $retval;
	}

	function notifySubscribersOfUpdate($release)
	{
		$retval = array();
		foreach( $this->subscribers as $s)
			$retval[] = $s->updateDvdRelease($release,$this->categoryName) ;
		return $retval;
	}

}


