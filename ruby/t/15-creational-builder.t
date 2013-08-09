
gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


use lib 'blib/lib';
require "Creational::Builder;

sub createSoupBuffet( SoupBuffetBuilder $builder)
{
	$builder.buildSoupBuffet();
	$builder.setSoupBuffetName();
	$builder.buildChickenSoup();
	$builder.buildClamChowder();
	$builder.buildFishChowder();    
	$builder.buildMinnestrone();
	$builder.buildPastaFazul();
	$builder.buildTofuSoup();
	$builder.buildVegetableSoup();
	return $builder.getSoupBuffet();
}     

       
my $bostonSoupBuffet = &createSoupBuffet( BostonSoupBuffetBuilder.new() );
is "At the " ~ $bostonSoupBuffet.soupBuffetName() ~ $bostonSoupBuffet.getTodaysSoups(),
	"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	"$?FILE Testing Boston soup buffet";

my $honoluluSoupBuffet = &createSoupBuffet( HonoluluSoupBuffetBuilder.new());
is "At the " ~  $honoluluSoupBuffet.soupBuffetName() ~  $honoluluSoupBuffet.getTodaysSoups(),
	"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	"$?FILE Testing Honolulu soup buffet";


done();
