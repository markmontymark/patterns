#//DvdStateNameStars  two of two Concrete States

use v6;

class DvdStateNameStars does DvdStateName {

	has Int $!starCount is rw;

	method new() {
		.$!starCount = 0;
	}
    
	method getName(DvdStateContext $ctx, Str $name) {
		(my $t = $name) =~ s/ /*/g;
		#// show stars twice, switch to exclamation point
		.$!starCount++;
		$ctx->setDvdStateName( DvdStateNameExclaim.new() )
			if .$!starCount > 1;
		return $t;
	}

}


