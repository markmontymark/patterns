use v5.016;
use strict;
use warnings;
use Test::More tests => 5;

BEGIN{ use_ok 'Patterns::Behavioral::State'};

my $stateContext = new Patterns::Behavioral::State::DvdStateContext();
is($stateContext->getName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"), 'Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies', 'first state change');
is($stateContext->getName( "Jay and Silent Bob Strike Back" ) , 'Jay*and*Silent*Bob*Strike*Back', 'second state change');
is($stateContext->getName( "Buffy The Vampire Slayer Season 2"), 'Buffy!The!Vampire!Slayer!Season!2', 'third state change');
is($stateContext->getName( "The Sopranos Season 2"), 'The*Sopranos*Season*2', 'fourth state change');

done_testing();
