<?

require_once 'BookInfo.php';
require_once 'GameInfo.php';
require_once 'DvdInfo.php';
require_once 'TitleBlurbVisitor.php';


class TitleShortBlurbVisitor extends TitleBlurbVisitor
{
	function visit( AbstractTitleInfo &$info )
	{
		$cname = get_class($info);
		if( $cname == 'DvdInfo' )
		{
			$this->setTitleBlurb( "SB-DVD: " .  $info->getTitleName() );
		}

		else if( $cname == 'BookInfo')
		{
			$this->setTitleBlurb( "SB-Book: " . $info->getTitleName() );
		}
		else if( $cname == 'GameInfo' )
		{
			$this->setTitleBlurb( "SB-Game: " . $info->getTitleName());
		}
	}
}

