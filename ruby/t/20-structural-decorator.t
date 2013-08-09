

gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';
require "Structural::Decorator;

my $teaLeaves = TeaLeaves.new();
ok($teaLeaves,'Make a teaLeaves obj');
my $chaiDecorator = ChaiDecorator.new($teaLeaves);
ok($chaiDecorator,'Make a chaiDecorator obj');
$chaiDecorator.steepTea();
is($chaiDecorator.teaToMakeChai.teaIsSteeped(), True ,'Tea is steeped');


done();
