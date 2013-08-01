
#//DvdNameReplaceSpacesStrategy - three of three concrete strategies

use lib '.';
use DvdNameStrategy;

class DvdNameReplaceSpacesStrategy is DvdNameStrategy {

	method formatDvdName($dvdName,$char) {
		my $t = $dvdName;
		$t ~~ s:g/\s+/$char/;
		return $t
	}

}

