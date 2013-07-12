<?

require_once 'BookInfo.php';
require_once 'GameInfo.php';
require_once 'DvdInfo.php';
require_once 'TitleBlurbVisitor.php';


class TitleLongBlurbVisitor extends TitleBlurbVisitor
{

	function visit( AbstractTitleInfo &$info )
	{
		$cname = get_class($info);
		if( $cname == 'DvdInfo' )
		{
			$this->setTitleBlurb(
				"LB-DVD: " .  $info->getTitleName() . 
				", starring " . $info->getStar() . 
				", region: " . $info->getRegion());
		}

		else if( $cname == 'BookInfo')
		{
			$this->setTitleBlurb(
				"LB-Book: " . $info->getTitleName()  .
				", Author: " .  $info->getAuthor() );
		}
		else if( $cname == 'GameInfo' )
		{
			$this->setTitleBlurb( "LB-Game: " . $info->getTitleName());
		} 
	}
}
