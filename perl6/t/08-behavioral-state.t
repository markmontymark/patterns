use v6;
use Test;

##use lib 'blib/lib';
BEGIN { @*INC.push('blib/lib') };

use Patterns::Behavioral::State::MyThing;

my $ctx = DvdStateContext.new();

is($ctx.getName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"), 'Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies', 'first state change');
is($ctx.getName( "Jay and Silent Bob Strike Back" ) , 'Jay*and*Silent*Bob*Strike*Back', 'second state change');
is($ctx.getName( "Buffy The Vampire Slayer Season 2"), 'Buffy!The!Vampire!Slayer!Season!2', 'third state change');
is($ctx.getName( "The Sopranos Season 2"), 'The*Sopranos*Season*2', 'fourth state change');

done();
