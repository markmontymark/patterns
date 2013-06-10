

package Patterns::Behavioral::State::DvdStateContext;

use Moo;
has dvdStateName => (is => 'rw');

sub BUILDARGS
{
	my($self,$name) = @_;
	{ dvdStateName => new Patterns::Behavioral::State::DvdStateNameStars() }
}

sub setDvdStateName
{
	my($self,$name) = @_;
	$self->dvdStateName($name);
}
   
sub getName
{
	my($self,$name) = @_;
	$self->dvdStateName->getName($self, $name)
}

1;
