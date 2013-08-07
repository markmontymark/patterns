#//TinOfTeaBags - one composite extension - the "node"

use Patterns::Structural::Composite::TeaBags;

class TinOfTeaBags does TeaBags {

	method countTeaBags {
		my Int $totalTeaBags = 0;
		$totalTeaBags += $_.countTeaBags() for @.teaBagList;
		$totalTeaBags
	}

	method add (TeaBags $teaBags)
	{
		$teaBags.parent = self;
		@.teaBagList.push: $teaBags;
		True
	}

	method remove( TeaBags $toRemove )
	{
		my Bool $found_at_least_one = False;
		my $len = @.teaBagList.elems;
		my $ri;
		for (-1*($len - 1))..0 {
			$ri = -1 * $_;
			my TeaBags $tb = @.teaBagList[ $ri ];
			if $tb === $toRemove {
				$found_at_least_one = True unless $found_at_least_one;
				@.teaBagList.splice: $ri,1;
			}
		}
		$found_at_least_one
	}

}
