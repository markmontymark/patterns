<?


#//GameTitleInfo - three of three concrete templates


require_once 'TitleInfo.php';

class GameTitleInfo extends TitleInfo
{

	function __construct($titleName)
	{
		$this->setTitleName($titleName);
	}

	function getTitleBlurb()
	{
		return 'Game: ' . $this->getTitleName();
	}
}
