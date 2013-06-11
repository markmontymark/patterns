
use strict;
use warnings;
use v5.016;

use Test::More tests => 2;

BEGIN{use_ok 'Patterns::Creational::Singleton'};

say("First person getting the spoon");
my $spoonForFirstPerson = $Patterns::Creational::Singleton::SingleSpoon::_SPOON;
$spoonForFirstPerson->useSpoon;
say  $spoonForFirstPerson ? $spoonForFirstPerson->toString : "No spoon was available";
say "";

say("Second person getting a spoon");
my $spoonForSecondPerson = $Patterns::Creational::Singleton::SingleSpoon::_SPOON;
is( "$spoonForFirstPerson", "$spoonForSecondPerson", 'Object toString expected to be equal');
$spoonForSecondPerson->useSpoon();
say  $spoonForSecondPerson ? $spoonForSecondPerson->toString : "No spoon was available";

say "";

say("First person returning the spoon");
$spoonForFirstPerson->returnSpoon;       
say("The spoon was returned");

say "";

say("Second person getting a spoon");
$spoonForSecondPerson->useSpoon;
say  $spoonForSecondPerson ? $spoonForSecondPerson->toString : "No spoon was available";

done_testing();
