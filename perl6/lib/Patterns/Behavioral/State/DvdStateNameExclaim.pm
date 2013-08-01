
use v6;

package Patterns::Behavioral::State;

class DvdStateNameExclaim does DvdStateName {

	method getName(DvdStateContext $ctx,$name) {
		(my $t = $name) =~ s/ /!/g;
		#//show exclaim only once, switch back to stars
		$ctx->setDvdStateName(DvdStateNameStars.new());
		return $t;
	}

}
