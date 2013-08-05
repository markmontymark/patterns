
use Patterns::Behavioral::State::DvdStateNameExclaim;
use Patterns::Behavioral::State::DvdStateNameStars;

class DvdStateContext {

	has DvdStateName $!dvdStateName is rw = DvdStateNameStars.new();
	has Int $!starCount is rw = 0;

#	method new {
#		my $starCount = 0;
#		return self.bless(*, dvdStateName => DvdStateNameStars.new() , :$starCount );
#	}

	method getName( Str $name) {
		if $!starCount === 2 {
			$!dvdStateName = DvdStateNameExclaim.new();
		}
		elsif $!starCount === 3 {
			$!dvdStateName = DvdStateNameStars.new();
			$!starCount = 0 ;
		}
		$!starCount += 1;
		return $!dvdStateName.getName($name);
	}
}

