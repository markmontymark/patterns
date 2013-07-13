<?

#//DvdMediator - The Mediator


class DvdMediator
{

	public $uppercasetitle;
	public $lowercasetitle;

	function changeTitle($title)
	{
		if( preg_match('/lower/i',get_class($title)) === 1) ##ugh
			$this->lowercasetitle->resetTitle( $title->getTitle() );
		else
			$this->uppercasetitle->resetTitle( $title->getTitle());
	}
}

