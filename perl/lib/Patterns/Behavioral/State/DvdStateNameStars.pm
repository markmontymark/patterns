#//DvdStateNameStars.java - two of two Concrete States

package Patterns::Behavioral::State::DvdStateNameStars;

use v5.016;
use Moo;
with 'Patterns::Behavioral::State::DvdStateName';
has starCount => (is => 'rw' );

sub BUILDARGS
{
	{ starCount => 0 }
}
    
sub getName
{
	my($self, $dvdStateContext, $name) = @_;
	(my $t = $name) =~ s/ /*/g;
	#// show stars twice, switch to exclamation point
	$self->starCount($self->starCount + 1);
	$dvdStateContext->setDvdStateName( new Patterns::Behavioral::State::DvdStateNameExclaim)
		if $self->starCount > 1;
	return $t;
}

1;

