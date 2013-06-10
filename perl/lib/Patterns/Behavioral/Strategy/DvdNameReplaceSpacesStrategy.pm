
package Patterns::Behavioral::Strategy::DvdNameReplaceSpacesStrategy;

#//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies
use Moo;
with 'Patterns::Behavioral::Strategy::DvdNameStrategy';

sub formatDvdName
{
	my($self,$dvdName,$char) = @_;
	(my $t = $dvdName ) =~ s/ /$char/g;
	$t
}

1;

