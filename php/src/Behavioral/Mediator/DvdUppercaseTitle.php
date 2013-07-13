<?

#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

require_once 'DvdTitle.php';


class DvdUppercaseTitle extends DvdTitle
{

	public $uppercasetitle;
	public $mediator;

	function __construct($title,$mediator)
	{
		$this->setTitle( is_object($title) ? $title->getTitle() : $title);
		$this->mediator = $mediator;
		$this->resetTitle(NULL);
		$this->mediator->uppercasetitle  = $this;
	}


	function resetTitle($title)
	{
		if($title)
			$this->setTitle($title) ;
		$this->uppercasetitle = strtoupper( $this->getTitle());
	}

	function setSuperTitleUpcase()
	{
		$this->setTitle( $this->uppercasetitle );
		$this->dvdMediator->changeTitle($this);       
	}
}

