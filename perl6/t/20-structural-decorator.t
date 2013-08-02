use strict;
use warnings;
use v5.016;

use Test::More tests => 4;

BEGIN{use_ok 'Patterns::Structural::Decorator'};

my $teaLeaves = new Patterns::Structural::Decorator::TeaLeaves;
ok($teaLeaves,'Make a teaLeaves obj');
my $chaiDecorator = new Patterns::Structural::Decorator::ChaiDecorator($teaLeaves);
ok($chaiDecorator,'Make a chaiDecorator obj');
$chaiDecorator->steepTea();
is($chaiDecorator->teaToMakeChai->teaIsSteeped, 1 ,'Tea is steeped');


done();
