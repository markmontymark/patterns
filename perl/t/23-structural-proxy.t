use strict;
use warnings;
use v5.016;

use Test::More tests => 2;

BEGIN{use_ok 'Patterns::Structural::Proxy'};


say("TestProxy: instantiating PotOfTeaProxy");
my $potOfTea = new Patterns::Structural::Proxy::PotOfTeaProxy();
say(" ");
say("TestProxy: pouring tea");
is( $potOfTea->pourTea() , 'Pouring tea', 'Test pouring from a pot of tea');

done_testing;
