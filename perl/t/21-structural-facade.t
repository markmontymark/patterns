use strict;
use warnings;
use v5.016;

use Test::More tests => 2;

BEGIN{use_ok 'Patterns::Structural::Facade'};

my $cuppaMaker = new Patterns::Structural::Facade::FacadeCuppaMaker();
my $teaCup = $cuppaMaker->makeACuppa();
is($teaCup->toString ,'A nice cuppa tea!', 'Test tea cup facade');

done_testing;
