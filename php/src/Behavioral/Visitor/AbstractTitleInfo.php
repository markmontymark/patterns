<?


abstract class AbstractTitleInfo
{
	private $titleName;

	abstract function accept( TitleBlurbVisitor &$tbv );
	
	function __construct( $titleName )
	{
		$this->setTitleName( $titleName );
	}
	
	function setTitleName($title)
	{
		$this->titleName = $title;
	}
	function getTitleName()
	{
		return $this->titleName;
	}
}
