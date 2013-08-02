use strict;
use warnings;
use v5.016;

use Test::More tests => 3;

BEGIN{use_ok 'Patterns::Structural::Adapter'};


my $teaCup = new Patterns::Structural::Adapter::TeaCup();

say("Steeping tea bag");
my $teaBag = new Patterns::Structural::Adapter::TeaBag();       
$teaCup->steepTeaBag($teaBag);
is($teaBag->teaBagIsSteeped, 1, 'Test that tea bag cup steeped tea');

say("Steeping loose leaf tea");
my $looseLeafTea = new Patterns::Structural::Adapter::LooseLeafTea();
my $teaBall = new Patterns::Structural::Adapter::TeaBall($looseLeafTea);
$teaCup->steepTeaBag($teaBall);
is($teaBall->teaBagIsSteeped, 1, 'Test that tea ball steeped teabag');

done();
