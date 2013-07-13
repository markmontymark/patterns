<?

#//DvdLowercaseTitle - One of Two Concrete Colleagues or Mediatees

require_once 'DvdTitle.php';

class DvdLowercaseTitle extends DvdTitle
{
	public $lowercasetitle;
	public $mediator;

	function __construct($title,$mediator)
	{
		$this->setTitle(is_object($title) ? $title->getTitle() : $title); ## can pass a string or a DvdTitle obj
		$this->mediator = $mediator;
		$this->resetTitle(NULL);
		$this->mediator->lowercasetitle = $this;
	}

	function resetTitle($title)
	{
		if($title)
		{
			 $this->setTitle($title);
			 $this->resetTitle(NULL);
		}
		else
		{
			$this->lowercasetitle = strtolower($this->getTitle());
		}
	}
		
	function setSuperTitleLowercase ()
	{
		$this->setTitle( $this->lowercasetitle );
		$this->mediator->changeTitle($this);
	}
		
	function setLowercaseTitle($lctitle)
	{
		$this->lowercasetitle = $lctitle;
	}
}
