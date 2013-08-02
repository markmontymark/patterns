#//TitleShortBlurbVisitor - two of two concrete Visitors

use Patterns::Behavioral::Visitor::GameInfo;
use Patterns::Behavioral::Visitor::BookInfo;
use Patterns::Behavioral::Visitor::DvdInfo;
use Patterns::Behavioral::Visitor::TitleBlurbVisitor;

class TitleShortBlurbVisitor is TitleBlurbVisitor {

	multi method visit(GameInfo $info ) {
		$.titleBlurb = "SB-Game: " ~ $info.titleName;
	}   

	multi method visit(BookInfo $info ) {
		$.titleBlurb = "SB-Book: " ~ $info.titleName;
	}

	multi method visit(DvdInfo $info ) {
		$.titleBlurb = "SB-DVD: " ~ $info.titleName;
	}

}
