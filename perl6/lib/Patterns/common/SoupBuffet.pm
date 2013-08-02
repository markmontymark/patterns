package Patterns::Creational::Builder::SoupBuffet;


#//SoupBuffet - A helper class
use Moo;

has soupBuffetName => (is => 'rw');
has chickenSoup => (is => 'rw');
has clamChowder => (is => 'rw');
has fishChowder => (is => 'rw');
has minnestrone => (is => 'rw');
has pastaFazul => (is => 'rw');
has tofuSoup => (is => 'rw');
has vegetableSoup => (is => 'rw');

sub getTodaysSoups 
{
	my $self = shift;
  " Today's Soups!  ".
	  " Chicken Soup: " .
	  $self->chickenSoup->soupName() .
	  " Clam Chowder: " .
	  $self->clamChowder->soupName() .
	  " Fish Chowder: " .
	  $self->fishChowder->soupName() .
	  " Minnestrone: " .
	  $self->minnestrone->soupName() .
	  " Pasta Fazul: " .
	  $self->pastaFazul->soupName() .
	  " Tofu Soup: " .
	  $self->tofuSoup->soupName() .
	  " Vegetable Soup: " .
	  $self->vegetableSoup->soupName()
}

1;
