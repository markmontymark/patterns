gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


use lib 'blib/lib';
require "Behavioral::Command;


my $jayAndBob = DvdName.new(titleName => "Jay and Silent Bob Strike Back");
my $spongeBob = DvdName.new(titleName => "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

my $bobStarsOn = DvdCommandNameStarsOn.new($jayAndBob);
my $bobStarsOff = DvdCommandNameStarsOff.new($jayAndBob);
my $spongeStarsOn = DvdCommandNameStarsOn.new($spongeBob);
my $spongeStarsOff = DvdCommandNameStarsOff.new($spongeBob);

is $jayAndBob.toString(),
	'DVD: Jay and Silent Bob Strike Back',
	"$?FILE create obj 1 ";
is $spongeBob.toString(),
	'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies',
	"$?FILE create obj 2  ";


$bobStarsOn.execute();
$spongeStarsOn.execute();
is $jayAndBob.toString(),
	'DVD: Jay*and*Silent*Bob*Strike*Back',
	"$?FILE stars on both 1";
is $spongeBob.toString(),
	'DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies',
	"$?FILE stars on both 2";

$spongeStarsOff.execute();
is $jayAndBob.toString(),
	'DVD: Jay*and*Silent*Bob*Strike*Back',
	"$?FILE turn off stars just on sponge 1";
is $spongeBob.toString(),
	'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies',
	"$?FILE turn off stars just on sponge 2";

done();
