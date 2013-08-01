
#//DvdRelease.java - a helper class

package Patterns::Behavioral::Observer::DvdRelease;

use Moo;
has serialNumber => (is => 'rw');
has name => (is => 'rw');
has releaseYear => (is => 'rw');
has releaseMonth => (is => 'rw');
has releaseDay => (is => 'rw');

sub BUILDARGS
{
	my($class,$serialNumber, $name, $releaseYear, $releaseMonth, $releaseDay ) = @_;
	{
		serialNumber => $serialNumber,
		releaseYear => $releaseYear ,
		releaseMonth => $releaseMonth ,
		releaseDay => $releaseDay,
		name => $name,
	}
}

sub updateRelease
{
	my($self, $release) = @_;
	$self->serialNumber($release->serialNumber);
	$self->name($release->name);
	$self->releaseYear($release->releaseYear);
	$self->releaseMonth($release->releaseMonth);
	$self->releaseDay($release->releaseDay);
}
   
sub updateDvdReleaseDate
{
	my($self,$releaseYear, $releaseMonth, $releaseDay) = @_;
	$self->releaseYear($releaseYear);
	$self->releaseMonth($releaseMonth);
	$self->releaseDay($releaseDay);
}

1;

