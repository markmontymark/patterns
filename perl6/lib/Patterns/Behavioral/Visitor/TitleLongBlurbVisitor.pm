# //TitleLongBlurbVisitor - one of two concrete Visitors

use Patterns::Behavioral::Visitor::GameInfo;
use Patterns::Behavioral::Visitor::BookInfo;
use Patterns::Behavioral::Visitor::DvdInfo;
use Patterns::Behavioral::Visitor::TitleBlurbVisitor;

class TitleLongBlurbVisitor is TitleBlurbVisitor {

	multi method visit(GameInfo $info ) {
		$.titleBlurb = "LB-Game: " ~ $info.titleName;
	}   

	multi method visit(BookInfo $info ) {
		$.titleBlurb = "LB-Book: " ~ $info.titleName ~  " , Author: " ~ $info.author;
	}

	multi method visit(DvdInfo $info ) {
		$.titleBlurb = "LB-DVD: " ~ $info.titleName ~ " , starring " ~ $info.star ~ " , region: " ~ $info.region;
	}

}
