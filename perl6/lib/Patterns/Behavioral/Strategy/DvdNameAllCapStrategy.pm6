#//DvdNameAllCapStrategy - one of three concrete strategies

use Patterns::Behavioral::Strategy::DvdNameStrategy;

class DvdNameAllCapStrategy does DvdNameStrategy {

	method formatDvdName(Str $dvdName, Str $char?)
	{
		uc $dvdName
	}

}

