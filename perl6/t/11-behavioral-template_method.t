use strict;
use warnings;
use v5.016;

use Test::More tests => 4;

BEGIN{use_ok 'Patterns::Behavioral::Template_Method'};


my $bladeRunner = 	new Patterns::Behavioral::Template_Method::DvdTitleInfo("Blade Runner", "Harrison Ford", '1'); 
my $electricSheep = 	new Patterns::Behavioral::Template_Method::BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
my $sheepRaider = 	new Patterns::Behavioral::Template_Method::GameTitleInfo("Sheep Raider");

is( $bladeRunner->ProcessTitleInfo, 'DVD: Blade Runner, starring Harrison Ford ', "Testing bladeRunner   ");
is( $electricSheep->ProcessTitleInfo,	'Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ', "Testing electricSheep ");
is( $sheepRaider->ProcessTitleInfo ,	'Game: Sheep Raider ', "Testing sheepRaider   " );

done();
