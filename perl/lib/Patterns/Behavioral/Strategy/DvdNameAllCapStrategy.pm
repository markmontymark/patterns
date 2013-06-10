package Patterns::Behavioral::Strategy::DvdNameAllCapStrategy;

#//DvdNameAllCapStrategy.java - one of three concrete strategies
use Moo;
with 'Patterns::Behavioral::Strategy::DvdNameStrategy';

sub formatDvdName
{
	my($self,$dvdName, $charIn) = @_;
	uc $dvdName
}

1;

