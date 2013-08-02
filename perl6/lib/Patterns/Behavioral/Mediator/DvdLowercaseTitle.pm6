#//DvdLowercaseTitle - One of Two Concrete Colleagues or Mediatees

package Patterns::Behavioral::Mediator::DvdLowercaseTitle;

use Moo;
extends('Patterns::Behavioral::Mediator::DvdTitle');
has lowercasetitle => (is => 'rw');
has mediator => (is => 'rw');

sub BUILDARGS
{
	my($class,$title,$mediator) = @_;
	{
		title => ref $title ? $title->getTitle : $title, ## can pass a string or a DvdTitle obj
		mediator => $mediator
	}
}

sub BUILD
{
	my($self) = @_;
	$self->resetTitle;
	print "mediator is $self->mediator\n";
	$self->mediator->lowercasetitle($self);
}

    
sub resetTitle
{
	my($self,$title) = @_;
	if(defined $title)
	{
       $self->setTitle($title);
       $self->resetTitle;
	}
	else
	{
		$self->lowercasetitle( lc $self->title );
	}
}
   
sub setSuperTitleLowercase 
{
	my $self = shift;
	$self->title( $self->lowercasetitle );
	$self->mediator->changeTitle($self);
}
   
sub setLowercaseTitle
{
	my($self,$lctitle) = @_;
	$self->lowercasetitle($lctitle);
}

1;

