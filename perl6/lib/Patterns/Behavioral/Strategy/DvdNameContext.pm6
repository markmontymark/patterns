# vi: filetype=perl6:
#//DvdNameContext - the context

use Patterns::Behavioral::Strategy::DvdNameAllCapStrategy;
use Patterns::Behavioral::Strategy::DvdNameTheAtEndStrategy;
use Patterns::Behavioral::Strategy::DvdNameReplaceSpacesStrategy;

class DvdNameContext {

	has DvdNameStrategy $.dvdNameStrategy is rw;
 
 
#	multi method formatDvdNames( Str @names) 
#	{
#		return .formatDvdNames( ' ', @names );
#	}

	method formatDvdNames( :@names, Str :$char? ) 
	{
		return @names.map: {
				my $bef = $_;
				my $aft = $.dvdNameStrategy.formatDvdName($_, $char);
				#say "Dvd name before formatting: $bef";
				#say "Dvd name after formatting:  $aft";
				$aft
			}
	}

}
