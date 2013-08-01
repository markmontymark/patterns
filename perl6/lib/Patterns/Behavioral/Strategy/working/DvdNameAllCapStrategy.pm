#//DvdNameAllCapStrategy - one of three concrete strategies

use lib '.';
use DvdNameStrategy;

class DvdNameAllCapStrategy is DvdNameStrategy {

	method formatDvdName(Str $dvdName, Str $charIn)
	{
		uc $dvdName
	}

}

