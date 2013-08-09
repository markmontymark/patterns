


gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


require "Structural::Facade;

my $cuppaMaker = FacadeCuppaMaker.new();
my $teaCup = $cuppaMaker.makeACuppa();
is $teaCup.toString() ,'A nice cuppa tea!', "$?FILE Test tea cup facade";

done();
