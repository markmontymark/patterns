use v5.016;
use strict;
use warnings;

use Test::More tests => 7;

BEGIN{use_ok 'Patterns::Behavioral::Visitor'};


my $bladeRunner = new Patterns::Behavioral::Visitor::DvdInfo("Blade Runner", "Harrison Ford", '1');
my $electricSheep = new Patterns::Behavioral::Visitor::BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
my $sheepRaider = new Patterns::Behavioral::Visitor::GameInfo("Sheep Raider");

my $titleLongBlurbVisitor = new Patterns::Behavioral::Visitor::TitleLongBlurbVisitor();

say("Long Blurbs:");     
$bladeRunner->accept($titleLongBlurbVisitor);
is($titleLongBlurbVisitor->getTitleBlurb,'LB-DVD: Blade Runner, starring Harrison Ford, region: 1','Blade runner long blurb');
say("Testing bladeRunner   " . $titleLongBlurbVisitor->getTitleBlurb());
$electricSheep->accept($titleLongBlurbVisitor);
is($titleLongBlurbVisitor->getTitleBlurb,'LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick','Electric sheep long blurb');
say("Testing electricSheep " . $titleLongBlurbVisitor->getTitleBlurb());
$sheepRaider->accept($titleLongBlurbVisitor);
is($titleLongBlurbVisitor->getTitleBlurb,'LB-Game: Sheep Raider','Sheep raider long blurb');
say("Testing sheepRaider   " . $titleLongBlurbVisitor->getTitleBlurb());

my $titleShortBlurbVisitor = new Patterns::Behavioral::Visitor::TitleShortBlurbVisitor();

say("Short Blurbs:");     
$bladeRunner->accept($titleShortBlurbVisitor);
is($titleShortBlurbVisitor->getTitleBlurb,'SB-DVD: Blade Runner','Blade runner short blurb');
say("Testing bladeRunner   " . $titleShortBlurbVisitor->getTitleBlurb());
$electricSheep->accept($titleShortBlurbVisitor);
is($titleShortBlurbVisitor->getTitleBlurb,'SB-Book: Do Androids Dream of Electric Sheep?','Electric sheep short blurb');
say("Testing electricSheep " . $titleShortBlurbVisitor->getTitleBlurb());
$sheepRaider->accept($titleShortBlurbVisitor);
is($titleShortBlurbVisitor->getTitleBlurb,'SB-Game: Sheep Raider','Sheep raider short blurb');
say("Testing sheepRaider   " . $titleShortBlurbVisitor->getTitleBlurb());

done_testing();
