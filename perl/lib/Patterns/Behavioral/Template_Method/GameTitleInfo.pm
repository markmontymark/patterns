

package Patterns::Behavioral::Template_Method::GameTitleInfo;


#//GameTitleInfo.java - three of three concrete templates
use Moo;
extends 'Patterns::Behavioral::Template_Method::TitleInfo';

sub BUILDARGS
{
	my($class,$titleName) = @_;
	{ titleName => $titleName }
}

sub BUILD
{
	my($self) = @_;
	$self->setTitleName( $self->titleName );
}

sub getTitleBlurb
{
	my $self = shift;
   'Game: ' . $self->getTitleName
}

1;

