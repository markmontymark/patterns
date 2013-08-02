#//AbstractTitleInfo - the abstract Visitee

use Patterns::Behavioral::Visitor::TitleBlurbVisitor;

class AbstractTitleInfo {

	has $.titleName is rw;

	method accept(TitleBlurbVisitor $tbv) { 
		$tbv.visit: self
	}
	
}


