# vi: filetype=perl6:

use v6;
use Test;

use lib 'blib/lib';

use Patterns::Behavioral::Strategy;

use DvdNameContext;

my $allCapContext = DvdNameContext.new( dvdNameStrategy => DvdNameAllCapStrategy.new );
my $theEndContext = DvdNameContext.new( dvdNameStrategy => DvdNameTheAtEndStrategy.new );
my $spacesContext = DvdNameContext.new( dvdNameStrategy => DvdNameReplaceSpacesStrategy.new );

my $dvdNames = [
	"Jay and Silent Bob Strike Back",
	"The Fast and the Furious",
	"The Others"
];

my $replaceChar = '*';       

is( join(',',@($allCapContext.formatDvdNames($dvdNames,$replaceChar))) ,
	'JAY AND SILENT BOB STRIKE BACK,THE FAST AND THE FURIOUS,THE OTHERS', 
	"$*PROGRAM_NAME All caps context");

is( join(',',@($theEndContext.formatDvdNames($dvdNames,$replaceChar))), 
	'Jay and Silent Bob Strike Back,Fast and the Furious, The,Others, The', 
	"$*PROGRAM_NAME The End context");

is( join(',',@($spacesContext.formatDvdNames($dvdNames, $replaceChar))),
	'Jay*and*Silent*Bob*Strike*Back,The*Fast*and*the*Furious,The*Others',
	"$*PROGRAM_NAME Space context");

done();
