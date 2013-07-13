<?

#//BookTitleInfo - two of three concrete templates

require_once 'TitleInfo.php';

class BookTitleInfo extends TitleInfo
{

	private $author;
    
	function __construct($titleName, $author)
	{
		$this->setTitleName($titleName);
		$this->author = $author;
	}

	function setAuthor($a) { $this->author = $a; }
	function getAuthor() { return $this->author; }

	function getTitleBlurb()
	{
		return "Book: " . $this->getTitleName() .  ", Author: " . $this->getAuthor();
	}
}


