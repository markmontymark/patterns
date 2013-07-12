<?

require_once 'BookInfo.php';
require_once 'GameInfo.php';
require_once 'DvdInfo.php';

abstract class TitleBlurbVisitor
{

	private $titleBlurb;

	abstract function visit (AbstractTitleInfo  &$info) ;
	
	function setTitleBlurb( $blurb )
	{
		$this->titleBlurb = $blurb;
	}

	function getTitleBlurb ()
	{
		return $this->titleBlurb;
	}
}
