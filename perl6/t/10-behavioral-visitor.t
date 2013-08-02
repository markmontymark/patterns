use v6;

use Test;

use lib 'blib/lib';
use lib 'blib/lib/Patterns/Behavioral/Visitor';

use AbstractTitleInfo;
use TitleBlurbVisitor;
use DvdInfo;
use BookInfo;
use GameInfo;
use TitleLongBlurbVisitor;
use TitleShortBlurbVisitor;


my $bladeRunner = DvdInfo.new(titleName=>"Blade Runner", star=>"Harrison Ford", region=>'1');
my $electricSheep = BookInfo.new(titleName=>"Do Androids Dream of Electric Sheep?", author=>"Phillip K. Dick");
my $sheepRaider = GameInfo.new(titleName=>"Sheep Raider");

my $titleLongBlurbVisitor = TitleLongBlurbVisitor.new();

#say("Long Blurbs:");     
$bladeRunner.accept($titleLongBlurbVisitor);
is($titleLongBlurbVisitor.titleBlurb,'LB-DVD: Blade Runner , starring Harrison Ford , region: 1','Blade runner long blurb');
#say("Testing bladeRunner   " ~ $titleLongBlurbVisitor.titleBlurb);
$electricSheep.accept($titleLongBlurbVisitor);
is($titleLongBlurbVisitor.titleBlurb,'LB-Book: Do Androids Dream of Electric Sheep? , Author: Phillip K. Dick','Electric sheep long blurb');
#say("Testing electricSheep " ~ $titleLongBlurbVisitor.titleBlurb);
$sheepRaider.accept($titleLongBlurbVisitor);
is($titleLongBlurbVisitor.titleBlurb,'LB-Game: Sheep Raider','Sheep raider long blurb');
#say("Testing sheepRaider   " ~ $titleLongBlurbVisitor.titleBlurb);

my $titleShortBlurbVisitor = TitleShortBlurbVisitor.new();

#say("Short Blurbs:");     
$bladeRunner.accept($titleShortBlurbVisitor);
is($titleShortBlurbVisitor.titleBlurb,'SB-DVD: Blade Runner','Blade runner short blurb');
#say("Testing bladeRunner   " ~ $titleShortBlurbVisitor.titleBlurb);
$electricSheep.accept($titleShortBlurbVisitor);
is($titleShortBlurbVisitor.titleBlurb,'SB-Book: Do Androids Dream of Electric Sheep?','Electric sheep short blurb');
#say("Testing electricSheep " ~ $titleShortBlurbVisitor.titleBlurb);
$sheepRaider.accept($titleShortBlurbVisitor);
is($titleShortBlurbVisitor.titleBlurb,'SB-Game: Sheep Raider','Sheep raider short blurb');
#say("Testing sheepRaider   " ~ $titleShortBlurbVisitor.titleBlurb);

done();
