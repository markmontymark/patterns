<?

require_once 'AbstractTitleInfo.php';

#//GameInfo - three of three concrete Visitees
class GameInfo extends AbstractTitleInfo
{

	function accept( TitleBlurbVisitor &$tbv )
	{
		$tbv->visit($this);
	}

}

