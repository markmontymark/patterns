#  DvdMediator - The Mediator

use Patterns::Behavioral::Mediator::DvdLowercaseTitle;
use Patterns::Behavioral::Mediator::DvdUppercaseTitle;

class DvdMediator {

	has DvdLowercaseTitle $.lowercasetitle is rw;
	has DvdUppercaseTitle $.uppercasetitle is rw;

	method new( DvdLowercaseTitle $lowercasetitle, DvdUppercaseTitle $uppercasetitle )
	{
		return self.bless( * , :$lowercasetitle, :$uppercasetitle );
	}

	multi method changeTitle (DvdLowercaseTitle $title )
	{
		$.lowercasetitle.resetTitle( $title.title );
	}

	multi method changeTitle (DvdUppercaseTitle $title )
	{
		$.uppercasetitle.resetTitle( $title.title);
	}
}

