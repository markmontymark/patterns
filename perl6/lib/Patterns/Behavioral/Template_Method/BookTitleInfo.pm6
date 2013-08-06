#//BookTitleInfo - two of three concrete templates

use Patterns::Behavioral::Template_Method::TitleInfo;

class BookTitleInfo does TitleInfo {

	has $.author is rw;
    
	method new(Str $titleName, Str$author)
	{
		return self.bless( * , :$titleName, :$author );
	}

	method getAuthor
	{
		$.author
	}

	method getTitleBlurb
	{
		'Book: ' ~ self.getTitleName() ~  ', Author: ' ~ self.getAuthor()
	}
}
