

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Singleton
#//Singleton Overview
#//A class distributes the only instance of itself.

package Patterns::Creational::Singleton::SingleSpoon;

use Moo;

our $_SPOON = new Patterns::Creational::Singleton::SingleSpoon;
has soupLastUsedWith => (is => 'rw');
has isAvailable => (
	is => 'rw',
	 default=> 1);
has theSpoon => (
	is => 'ro',
	default => sub{return $_SPOON});
has theSpoonIsAvailable => (is => 'ro');

sub BUILD
{
	my($self) = @_;
	$self = $_SPOON;
	return $_SPOON;
}


sub useSpoon
{
	my $self = shift;
	if($self->isAvailable)
	{
		$self->isAvailable(0);
		return;
	}
	#warn "Spoon in use";
}

sub toString 
{
	my $self = shift;
	'The spoon is' . 
		($self->isAvailable ? ' ' : ' not ') . 
		'available.  The spoon was ' . 
		($self->soupLastUsedWith ? ('last used with '. $self->soupLastUsedWith) :  'not used yet') . '.';
}

sub returnSpoon
{
	my $self = shift;
	$self->soupLastUsedWith(undef);
	$self->isAvailable(1);
}   

1;
