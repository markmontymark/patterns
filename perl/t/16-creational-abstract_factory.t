use strict;
use warnings;
use v5.016;

use Test::More tests => 3;

BEGIN{use_ok 'Patterns::Creational::Abstract_Factory'};


sub MakeSoupOfTheDay
{
	my $concreteSoupFactory = shift;
	srand;
	my $r = 3;
	my $soups = [ $concreteSoupFactory->makeChickenSoup(),
           $concreteSoupFactory->makeClamChowder(),
           $concreteSoupFactory->makeFishChowder(),
           $concreteSoupFactory->makeMinnestrone(),
           $concreteSoupFactory->makePastaFazul(),
           $concreteSoupFactory->makeTofuSoup(),
           $concreteSoupFactory->makeVegetableSoup(),
           $concreteSoupFactory->makeVegetableSoup(),
       ];
	$soups->[$r]
}        

my $concreteSoupFactory = new Patterns::Creational::Abstract_Factory::BostonConcreteSoupFactory();
my $soupOfTheDay = &MakeSoupOfTheDay($concreteSoupFactory);
is("The Soup of the day " .  $concreteSoupFactory->factoryLocation .  " is " .  $soupOfTheDay->soupName(),
	"The Soup of the day Boston is Minnestrone",
	'Testing boston soup of the day');

$concreteSoupFactory = new Patterns::Creational::Abstract_Factory::HonoluluConcreteSoupFactory();
$soupOfTheDay = &MakeSoupOfTheDay($concreteSoupFactory);
is("The Soup of the day " .  $concreteSoupFactory->factoryLocation .  " is " .  $soupOfTheDay->soupName,
	"The Soup of the day Honolulu is Minnestrone",
	'Testing boston soup of the day');

1;
