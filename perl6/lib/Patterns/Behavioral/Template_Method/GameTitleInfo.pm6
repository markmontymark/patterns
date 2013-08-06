
#//GameTitleInfo - three of three concrete templates

use Patterns::Behavioral::Template_Method::TitleInfo;

class GameTitleInfo does TitleInfo {

	method new( Str $titleName )
	{
		return self.bless( * , :$titleName );
	}

	method getTitleBlurb
	{
		'Game: ' ~ self.getTitleName()
	}

}

