

use v6;

use Test;

use lib 'blib/lib';


use Patterns::Structural::Facade;

my $cuppaMaker = FacadeCuppaMaker.new();
my $teaCup = $cuppaMaker.makeACuppa();
is $teaCup.toString() ,'A nice cuppa tea!', "$?FILE Test tea cup facade";

done();
