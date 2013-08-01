
package Patterns::Behavioral::Template_Method::BookTitleInfo;


#//BookTitleInfo.java - two of three concrete templates

use Moo;
extends 'Patterns::Behavioral::Template_Method::TitleInfo';

has author => (is => 'rw');
    
sub BUILDARGS
{
	my($class,$titleName, $author)  = @_;
	{
		titleName => $titleName,
		author => $author,
	}
}

sub BUILD
{
	my($self) = @_;
	$self->setTitleName( $self->titleName );
	$self->setAuthor ( $self->author );
}    


sub setAuthor
{
	my($self, $author) = @_;
	$self->author($author);
}
sub getAuthor
{
	shift -> author
}

sub getTitleBlurb
{
	my($self) = @_;
	"Book: " . $self->getTitleName .  ", Author: " . $self->getAuthor
}

1;
