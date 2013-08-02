use v5.016;
use strict;
use warnings;
use Test::More tests => 6;
use Patterns::Behavioral::Command;

BEGIN {*USING:: = *Patterns::Behavioral::Command::}

my $jayAndBob = new USING::DvdName("Jay and Silent Bob Strike Back");
my $spongeBob = new USING::DvdName("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

my $bobStarsOn = new USING::DvdCommandNameStarsOn($jayAndBob);
my $bobStarsOff = new USING::DvdCommandNameStarsOff($jayAndBob);
my $spongeStarsOn = new USING::DvdCommandNameStarsOn($spongeBob);
my $spongeStarsOff = new USING::DvdCommandNameStarsOff($spongeBob);

say "as first instantiated";
say $jayAndBob->toString;  
say $spongeBob->toString; 
is($jayAndBob->toString,'DVD: Jay and Silent Bob Strike Back','test to string');
is($spongeBob->toString,'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies','test to string');


$bobStarsOn->execute;
$spongeStarsOn->execute;
say " ";
say "stars on";
say $jayAndBob->toString;
say $spongeBob->toString;
is($jayAndBob->toString,'DVD: Jay*and*Silent*Bob*Strike*Back','test to string');
is($spongeBob->toString,'DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies','test to string');

$spongeStarsOff->execute;
say " ";
say "sponge stars off" ;
say $jayAndBob->toString ;
say $spongeBob->toString ;
is($jayAndBob->toString,'DVD: Jay*and*Silent*Bob*Strike*Back','test to string');
is($spongeBob->toString,'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies','test to string');

done();
