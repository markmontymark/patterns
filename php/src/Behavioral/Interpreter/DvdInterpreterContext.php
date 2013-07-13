<?

#//DvdInterpreterContext - The Context

class DvdInterpreterContext
{
	public $titles;
	public $actors;
	public $titlesAndActors;

	function __construct()
	{
		$this->titles = array();
		$this->actors = array();
		$this->titlesAndActors = array();
	}

	function addTitle($title) { $this->titles[]= $title; }
	function addActor($actor) { $this->actors[]= $actor; }
	function addTitleAndActor($ta) { $this->titlesAndActors[]= $ta; }

	function getAllTitles () { return $this->titles; }
	function getAllActors () { return $this->actors; }

	function getActorsForTitle($title)
	{
		$retval = array();
		foreach( $this->titlesAndActors as $ta ) 
			if($title == $ta->title)
				$retval[]= $ta->actor ;
		return $retval;
	}

	function getTitlesForActor($actor)
	{
		$retval = array();
		foreach( $this->titlesAndActors as $ta ) 
			if($actor == $ta->actor)
				$retval[]= $ta->title;
		return $retval;
	}
}
