
#//DvdNameTheAtEndStrategy.java - two of three concrete strategies

package Patterns::Behavioral::Strategy::DvdNameTheAtEndStrategy;

use Moo;
with 'Patterns::Behavioral::Strategy::DvdNameStrategy';

sub formatDvdName
{
	my($self,$dvdName,$char) = @_;
	return substr($dvdName,4) . ', The' if $dvdName =~ /^The /;
	return substr($dvdName,4) . ", THE" if $dvdName =~ /^THE /;
	return substr($dvdName,4) . ", the" if $dvdName =~ /^the /;
	return $dvdName;
}

1;

