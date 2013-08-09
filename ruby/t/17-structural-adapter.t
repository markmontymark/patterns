
gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


require "Structural::Adapter;

my $teaCup = TeaCup.new();

my $teaBag = TeaBag.new();       
$teaCup.steepTeaBag($teaBag);
is $teaBag.teaBagIsSteeped(), True, "$?FILE Test that tea bag cup steeped tea";

my $looseLeafTea = LooseLeafTea.new();
my $teaBall = TeaBall.new($looseLeafTea);
$teaCup.steepTeaBag($teaBall);
is $teaBall.teaBagIsSteeped(), True, "$?FILE Test that tea ball steeped teabag";

done();
