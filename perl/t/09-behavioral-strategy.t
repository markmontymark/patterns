use v5.016;
use strict;
use warnings;
use Test::More tests => 4;

BEGIN{ use_ok 'Patterns::Behavioral::Strategy'};


my $allCapContext = new Patterns::Behavioral::Strategy::DvdNameContext('C');
my $theEndContext = new Patterns::Behavioral::Strategy::DvdNameContext('E');
my $spacesContext = new Patterns::Behavioral::Strategy::DvdNameContext('S');

my $dvdNames = [
	"Jay and Silent Bob Strike Back",
	"The Fast and the Furious",
	"The Others"
];

my $replaceChar = '*';       

say("Testing formatting with all caps");
is( join(',',@{$allCapContext->formatDvdNames($dvdNames)}) ,'JAY AND SILENT BOB STRIKE BACK,THE FAST AND THE FURIOUS,THE OTHERS', 'All caps context');

say(" ");
say("Testing formatting with beginning the at end");
is( join(',',@{$theEndContext->formatDvdNames($dvdNames)}), 'Jay and Silent Bob Strike Back,Fast and the Furious, The,Others, The', ' The End context');

say(" ");       
say("Testing formatting with all spaces replaced with $replaceChar");
is( join(',',@{$spacesContext->formatDvdNames($dvdNames, $replaceChar)}),'Jay*and*Silent*Bob*Strike*Back,The*Fast*and*the*Furious,The*Others','Space context');

done_testing();
