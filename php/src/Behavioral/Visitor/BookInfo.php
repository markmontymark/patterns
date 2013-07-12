<?

require_once 'AbstractTitleInfo.php';

class BookInfo extends AbstractTitleInfo
{

	private $author;

	function __construct( $title,$author )
	{
		parent::__construct( $title );
		$this->author = $author;
	}    

	function getAuthor()
	{
		return $this->author;
	}

	function accept(TitleBlurbVisitor &$tbv )
	{
		$tbv->visit($this);
	}
}
