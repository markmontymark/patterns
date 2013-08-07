

use v6;

use Test;

use lib 'blib/lib';


use Patterns::Structural::Proxy


say("TestProxy: instantiating PotOfTeaProxy");
my $potOfTea = new Patterns::Structural::Proxy::PotOfTeaProxy();
say(" ");
say("TestProxy: pouring tea");
is( $potOfTea->pourTea() , 'Pouring tea', 'Test pouring from a pot of tea');

done();
