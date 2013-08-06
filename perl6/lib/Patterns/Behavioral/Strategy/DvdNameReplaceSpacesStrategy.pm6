
#//DvdNameReplaceSpacesStrategy - three of three concrete strategies

use Patterns::Behavioral::Strategy::DvdNameStrategy;

class DvdNameReplaceSpacesStrategy does DvdNameStrategy {

	method formatDvdName( Str $name is copy, Str $char) {
		$name ~~ s:g/\s+/$char/;
		return $name;
	}

}

