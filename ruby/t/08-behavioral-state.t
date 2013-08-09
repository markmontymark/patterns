gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


use lib 'blib/lib';
require "Behavioral::State;

my $ctx = DvdStateContext.new();

is $ctx.getName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"), 
	'Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies', 
	"$?FILE first state change";

is $ctx.getName( "Jay and Silent Bob Strike Back" ) , 
	'Jay*and*Silent*Bob*Strike*Back', 
	"$?FILE second state change";

is $ctx.getName( "Buffy The Vampire Slayer Season 2"), 
	'Buffy!The!Vampire!Slayer!Season!2', 
	"$?FILE third state change";

is $ctx.getName( "The Sopranos Season 2"), 
	'The*Sopranos*Season*2', 
	"$?FILE fourth state change";

done();
