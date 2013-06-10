
package Patterns::Behavioral::State::DvdStateNameExclaim;

use v5.016;
use Moo;
with 'Patterns::Behavioral::State::DvdStateName';
    
sub getName 
{
	my($self,$dvdStateContext,$name) = @_;
	my $t = $name;
	$t =~ s/ /!/g;
	#//show exclaim only once, switch back to stars
	$dvdStateContext->setDvdStateName(new Patterns::Behavioral::State::DvdStateNameStars());
	return $t;
}

1;
