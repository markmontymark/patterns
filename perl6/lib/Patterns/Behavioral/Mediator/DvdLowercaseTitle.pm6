#//DvdLowercaseTitle - One of Two Concrete Colleagues or Mediatees

use Patterns::Behavioral::Mediator::DvdTitle;

class DvdLowercaseTitle does DvdTitle {


	has Str $.lowercasetitle is rw;


	multi method new( Str $title )
	{	
		return self.init( self.bless( :$title ) );
	}

	multi method new( DvdTitle $titleObj )
	{	
		my Str $title = $title.getTitle();
		return self.init( self.bless( :$title ) );
	}


	method init (DvdLowercaseTitle $self )
	{
		$self.resetTitle();
		return $self;
	}

    
	multi method resetTitle(Str $title )
	{
       self.setTitle($title);
       self.resetTitle();
	}

	multi method resetTitle
	{
		$.lowercasetitle = lc $.title;
	}

   
	method setSuperTitleLowercase 
	{
		$.title = $.lowercasetitle;
	}
		
	method setLowercaseTitle( Str $lctitle)
	{
		$.lowercasetitle = $lctitle;
	}

}

