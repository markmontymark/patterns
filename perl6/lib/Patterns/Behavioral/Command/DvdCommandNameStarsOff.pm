
# //DvdCommandNameStarsOn - one of two Concrete Commands

package Patterns::Behavioral::Command::DvdCommandNameStarsOff;

use Moo;
extends 'Patterns::Behavioral::Command::CommandAbstract';
has dvdName => (is => 'rw');

sub BUILDARGS
{
	my($class, $dvdName) = @_;
	{
		dvdName => $dvdName
	}
}

sub execute
{
	my $self = shift;
	$self->dvdName->setNameStarsOff;
}

1;
