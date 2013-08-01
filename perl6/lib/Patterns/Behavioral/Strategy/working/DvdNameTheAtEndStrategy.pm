
#//DvdNameTheAtEndStrategy - two of three concrete strategies

use lib '.';
use DvdNameStrategy;

class DvdNameTheAtEndStrategy is DvdNameStrategy {

	method formatDvdName($dvdName,$char) {
		return substr($dvdName,4) ~ ', The' if $dvdName ~~ /^The\s+/;
		return substr($dvdName,4) ~ ", THE" if $dvdName ~~ /^THE\s+/;
		return substr($dvdName,4) ~ ", the" if $dvdName ~~ /^the\s+/;
		return $dvdName;
	}

}

