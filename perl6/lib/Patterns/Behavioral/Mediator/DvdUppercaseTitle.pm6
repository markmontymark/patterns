#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

package Patterns::Behavioral::Mediator::DvdUppercaseTitle;

use Moo;
extends 'Patterns::Behavioral::Mediator::DvdTitle';

has uppercasetitle => (is => 'rw');
has mediator => (is => 'rw');


sub BUILDARGS
{
	my($class,$title,$mediator) = @_;
	{
		title => ref $title ? $title->title : $title,
		mediator => $mediator,
	}
}

sub BUILD
{
	my $self = shift;
	$self->setTitle( $self->title);
	$self->resetTitle;
	$self->mediator->uppercasetitle($self);
}


sub resetTitle
{
	my( $self,$title ) = @_;
	$self->setTitle($title) if defined $title;
	$self->uppercasetitle( uc $self->title );
}

sub setSuperTitleUpcase {
	my $self = shift;
	$self->setTitle( $self->uppercasetitle );
	$self->dvdMediator->changeTitle($self);       
}


1;

