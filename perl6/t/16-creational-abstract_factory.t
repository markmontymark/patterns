use v6;

use Test;

use lib 'blib/lib';


use lib 'blib/lib';
use Patterns::Creational::Abstract_Factory;


sub MakeSoupOfTheDay ( AbstractSoupFactory $sf ) returns Soup
{
	my $r = 3;
	my Soup @soups = ( $sf.makeChickenSoup(),
           $sf.makeClamChowder(),
           $sf.makeFishChowder(),
           $sf.makeMinnestrone(),
           $sf.makePastaFazul(),
           $sf.makeTofuSoup(),
           $sf.makeVegetableSoup(),
       );
	return @soups[$r];
}        

my AbstractSoupFactory $concreteSoupFactory = BostonConcreteSoupFactory.new();
my $soupOfTheDay = &MakeSoupOfTheDay($concreteSoupFactory);

is "The Soup of the day " ~  $concreteSoupFactory.factoryLocation ~  " is " ~  $soupOfTheDay.soupName,
	"The Soup of the day Boston is Minnestrone",
	"$?FILE Testing boston soup of the day";

$concreteSoupFactory = HonoluluConcreteSoupFactory.new();
$soupOfTheDay = &MakeSoupOfTheDay($concreteSoupFactory);
is "The Soup of the day " ~  $concreteSoupFactory.factoryLocation ~  " is " ~  $soupOfTheDay.soupName,
	"The Soup of the day Honolulu is Minnestrone",
	"$?FILE Testing honolulu soup of the day";

