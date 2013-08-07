

use v6;

use Test;

use lib 'blib/lib';


use Patterns::Structural::Facade

my $cuppaMaker = new Patterns::Structural::Facade::FacadeCuppaMaker();
my $teaCup = $cuppaMaker->makeACuppa();
is($teaCup->toString ,'A nice cuppa tea!', 'Test tea cup facade');

done();
