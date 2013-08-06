use v6;

use Test;

use lib 'blib/lib';
use Patterns::Behavioral::Template_Method;


my $bladeRunner = 	DvdTitleInfo.new("Blade Runner", "Harrison Ford", 1); 
my $electricSheep = 	BookTitleInfo.new("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
my $sheepRaider = 	GameTitleInfo.new("Sheep Raider");

is $bladeRunner.ProcessTitleInfo(), 	'DVD: Blade Runner, starring Harrison Ford 1', "$?FILE dvd Testing bladeRunner   ";
is $electricSheep.ProcessTitleInfo(),	'Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ', "$?FILE book Testing electricSheep ";
is $sheepRaider.ProcessTitleInfo() ,	'Game: Sheep Raider ', "$?FILE game Testing sheepRaider   " ;

done();
