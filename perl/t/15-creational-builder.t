use strict;
use warnings;
use v5.016;

use Test::More tests => 3;

BEGIN{use_ok 'Patterns::Creational::Builder'};

sub createSoupBuffet
{
	my $builder = shift;
        $builder->buildSoupBuffet();
        $builder->setSoupBuffetName();
        $builder->buildChickenSoup();
        $builder->buildClamChowder();
        $builder->buildFishChowder();    
        $builder->buildMinnestrone();
        $builder->buildPastaFazul();
        $builder->buildTofuSoup();
        $builder->buildVegetableSoup();
        return $builder->getSoupBuffet();
}     
    
       
my $bostonSoupBuffet = &createSoupBuffet(new Patterns::Creational::Builder::BostonSoupBuffetBuilder());
is("At the " . $bostonSoupBuffet->soupBuffetName() . $bostonSoupBuffet->getTodaysSoups(),
	"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	'Testing Boston soup buffet');

my $honoluluSoupBuffet = &createSoupBuffet(new Patterns::Creational::Builder::HonoluluSoupBuffetBuilder());
is("At the " .  $honoluluSoupBuffet->soupBuffetName() .  $honoluluSoupBuffet->getTodaysSoups(),
	"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	'Testing Honolulu soup buffet');


done_testing();
