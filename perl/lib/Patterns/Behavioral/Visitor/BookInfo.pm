package Patterns::Behavioral::Visitor::BookInfo;

#//BookInfo.java - one of three concrete Visitees
use Moo;
extends 'Patterns::Behavioral::Visitor::AbstractTitleInfo';

has author => (is => 'rw');

sub BUILDARGS
{
	my($class, $title,$author ) = @_;
	{
		titleName => $title,
		author => $author
	}
}    

sub accept
{
	my($self,$titleBlurbVisitor) = @_;
	$titleBlurbVisitor->visit($self);
}


1;
