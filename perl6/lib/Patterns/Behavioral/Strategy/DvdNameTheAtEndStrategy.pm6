
#//DvdNameTheAtEndStrategy - two of three concrete strategies

use Patterns::Behavioral::Strategy::DvdNameStrategy;

class DvdNameTheAtEndStrategy does DvdNameStrategy {

	method formatDvdName( Str $name , Str $char?) 
	{
		return substr($name,4) ~ (', ') ~ $/[0] if $name ~~ m:i/ ^ (the)\s+ /;
		#return substr($name,4) ~ (', ') ~ $0 if $name ~~ m:i/ ^ (the)\s+ /;
		return $name;
	}

}

