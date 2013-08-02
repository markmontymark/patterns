# vi: filetype=perl6:
#//DvdNameContext - the context

use lib '.';

use DvdNameAllCapStrategy;
use DvdNameTheAtEndStrategy;
use DvdNameReplaceSpacesStrategy;

class DvdNameContext {

	has $.dvdNameStrategy is rw;
  
	method formatDvdNames($names,$char) {
		$char = ' ' unless defined $char;
		return [
			$names.map: {
				my $before = $_;
				my $after = $.dvdNameStrategy.formatDvdName($_, $char);
				#say "Dvd name before formatting: $before";
				#say "Dvd name after formatting:  $after";
				$after
			}
		];
	}

}
