#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

use Patterns::Behavioral::Mediator::DvdTitle;

class DvdUppercaseTitle does DvdTitle {

	has Str $.uppercasetitle is rw;

	multi method new( DvdTitle $titleObj )
	{
		my $title = $titleObj.getTitle();
		return self.init( self.bless( :$title) );
	}
	multi method new( Str $title )
	{
		return self.init( self.bless( :$title ) );
	}

	method init( DvdUppercaseTitle $self )
	{
		$self.resetTitle();
		return $self;
	}

	multi method resetTitle( Str $title )
	{
		self.setTitle($title);
		self.uppercasetitle = uc self.title ;
	}

	multi method resetTitle( )
	{
		self.uppercasetitle = uc self.title ;
	}

	method setSuperTitleUpcase {
		self.setTitle( self.uppercasetitle );
	}	


}
