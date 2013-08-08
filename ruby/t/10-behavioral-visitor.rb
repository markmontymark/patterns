use v6;

use Test;

use lib 'blib/lib';


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

$bladeRunner.accept($titleLongBlurbVisitor);
is $titleLongBlurbVisitor.titleBlurb,'LB-DVD: Blade Runner , starring Harrison Ford , region: 1',"$?FILE Blade runner long blurb";
$electricSheep.accept($titleLongBlurbVisitor);
is $titleLongBlurbVisitor.titleBlurb,'LB-Book: Do Androids Dream of Electric Sheep? , Author: Phillip K. Dick',"$?FILE Electric sheep long blurb";
$sheepRaider.accept($titleLongBlurbVisitor);
is $titleLongBlurbVisitor.titleBlurb,'LB-Game: Sheep Raider',"$?FILE Sheep raider long blurb";

my $titleShortBlurbVisitor = TitleShortBlurbVisitor.new();

$bladeRunner.accept($titleShortBlurbVisitor);
is $titleShortBlurbVisitor.titleBlurb,'SB-DVD: Blade Runner',"$?FILE Blade runner short blurb";
$electricSheep.accept($titleShortBlurbVisitor);
is $titleShortBlurbVisitor.titleBlurb,'SB-Book: Do Androids Dream of Electric Sheep?',"$?FILE Electric sheep short blurb";
$sheepRaider.accept($titleShortBlurbVisitor);
is $titleShortBlurbVisitor.titleBlurb,'SB-Game: Sheep Raider',"$?FILE Sheep raider short blurb";

done();
