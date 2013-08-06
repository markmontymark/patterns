      
use v6;

use Test;

use lib 'blib/lib';
use Patterns::Creational::Factory_Method;

my $soupFactoryMethod = SoupFactoryMethod.new();
my $soupBuffet = $soupFactoryMethod.makeSoupBuffet();
$soupBuffet.soupBuffetName = $soupFactoryMethod.makeBuffetName();
$soupBuffet.chickenSoup =  $soupFactoryMethod.makeChickenSoup();
$soupBuffet.clamChowder =  $soupFactoryMethod.makeClamChowder(); 
$soupBuffet.fishChowder =  $soupFactoryMethod.makeFishChowder();
$soupBuffet.minnestrone =  $soupFactoryMethod.makeMinnestrone();
$soupBuffet.pastaFazul =  $soupFactoryMethod.makePastaFazul(); 
$soupBuffet.tofuSoup =  $soupFactoryMethod.makeTofuSoup();
$soupBuffet.vegetableSoup =  $soupFactoryMethod.makeVegetableSoup(); 
is "At the  " ~ $soupBuffet.soupBuffetName() ~ $soupBuffet.getTodaysSoups(), 
	"At the  Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: Clam Chowder Fish Chowder: Fish Chowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	"$?FILE Testing plain soup buffet";


my $bostonSoupFactoryMethod = BostonSoupFactoryMethodSubclass.new();
my $bostonSoupBuffet = $bostonSoupFactoryMethod.makeSoupBuffet();
$bostonSoupBuffet.soupBuffetName =  $bostonSoupFactoryMethod.makeBuffetName();
$bostonSoupBuffet.chickenSoup =  $bostonSoupFactoryMethod.makeChickenSoup();
$bostonSoupBuffet.clamChowder =  $bostonSoupFactoryMethod.makeClamChowder();
$bostonSoupBuffet.fishChowder =  $bostonSoupFactoryMethod.makeFishChowder();
$bostonSoupBuffet.minnestrone =  $bostonSoupFactoryMethod.makeMinnestrone();
$bostonSoupBuffet.pastaFazul =  $bostonSoupFactoryMethod.makePastaFazul();
$bostonSoupBuffet.tofuSoup =  $bostonSoupFactoryMethod.makeTofuSoup();
$bostonSoupBuffet.vegetableSoup =  $bostonSoupFactoryMethod.makeVegetableSoup(); 
is "At the  " ~ $bostonSoupBuffet.soupBuffetName() ~ $bostonSoupBuffet.getTodaysSoups(), 
	"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	"$?FILE Testing Boston soup buffet";

my $honoluluSoupFactoryMethod = HonoluluSoupFactoryMethodSubclass.new();
my $honoluluSoupBuffet = $honoluluSoupFactoryMethod.makeSoupBuffet();
$honoluluSoupBuffet.soupBuffetName =  $honoluluSoupFactoryMethod.makeBuffetName();
$honoluluSoupBuffet.chickenSoup =  $honoluluSoupFactoryMethod.makeChickenSoup();
$honoluluSoupBuffet.clamChowder =  $honoluluSoupFactoryMethod.makeClamChowder(); 
$honoluluSoupBuffet.fishChowder =  $honoluluSoupFactoryMethod.makeFishChowder();
$honoluluSoupBuffet.minnestrone =  $honoluluSoupFactoryMethod.makeMinnestrone();
$honoluluSoupBuffet.pastaFazul  = $honoluluSoupFactoryMethod.makePastaFazul(); 
$honoluluSoupBuffet.tofuSoup  = $honoluluSoupFactoryMethod.makeTofuSoup();
$honoluluSoupBuffet.vegetableSoup =  $honoluluSoupFactoryMethod.makeVegetableSoup(); 
is "At the  " ~ $honoluluSoupBuffet.soupBuffetName() ~ $honoluluSoupBuffet.getTodaysSoups(), 
	"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Sou",
	"$?FILE Testing Honolulu soup buffet";

done();
