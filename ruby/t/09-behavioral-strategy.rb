# vi: filetype=perl6
use v6;
use Test;

use lib 'blib/lib';


use lib 'blib/lib';

use Patterns::Behavioral::Strategy;

my $allCapContext = DvdNameContext.new( dvdNameStrategy => DvdNameAllCapStrategy.new() );
my $theEndContext = DvdNameContext.new( dvdNameStrategy => DvdNameTheAtEndStrategy.new() );
my $spacesContext = DvdNameContext.new( dvdNameStrategy => DvdNameReplaceSpacesStrategy.new() );

my @names = (
	"Jay and Silent Bob Strike Back",
	"The Fast and the Furious",
	"The Others"
);

my $char = '*';

is $allCapContext.formatDvdNames( :@names).join(',') ,
	'JAY AND SILENT BOB STRIKE BACK,THE FAST AND THE FURIOUS,THE OTHERS', 
	"$?FILE All caps context";

is join(',',$theEndContext.formatDvdNames( :@names)), 
	'Jay and Silent Bob Strike Back,Fast and the Furious, The,Others, The', 
	"$?FILE The End context";

is join(',',$spacesContext.formatDvdNames( :@names, :$char )),
	'Jay*and*Silent*Bob*Strike*Back,The*Fast*and*the*Furious,The*Others',
	"$?FILE Space context";

done();
