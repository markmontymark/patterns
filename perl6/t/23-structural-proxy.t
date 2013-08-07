

use v6;

use Test;

use lib 'blib/lib';
use Patterns::Structural::Proxy;


my $potOfTea = PotOfTeaProxy.new();
is  $potOfTea.pourTea() , 'Pouring tea', "$?FILE Test pouring from a pot of tea";

done();
