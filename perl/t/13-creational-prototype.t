use strict;
use warnings;
use v5.016;

use Test::More tests => 3;

BEGIN{use_ok 'Patterns::Creational::Prototype'};

say( "Creating a Prototype Factory with a SoupSpoon and a SaladFork");
my $prototypeFactory = new Patterns::Creational::Prototype::PrototypeFactory(
	new Patterns::Creational::Prototype::SoupSpoon(), 
	new Patterns::Creational::Prototype::SaladFork());
my $spoon = $prototypeFactory->makeSpoon();
my $fork = $prototypeFactory->makeFork();
say("Getting the Spoon and Fork name:");
is ("Spoon: " . $spoon->spoonName . ", Fork: " . $fork->forkName ,'Spoon: Soup Spoon, Fork: Salad Fork', 'Testing with SoupSpoon and SaladFork');
say(" ");       
say("Creating a Prototype Factory with a SaladSpoon and a SaladFork");
$prototypeFactory = new Patterns::Creational::Prototype::PrototypeFactory(
	new Patterns::Creational::Prototype::SaladSpoon(), 
	new Patterns::Creational::Prototype::SaladFork());
$spoon = $prototypeFactory->makeSpoon();
$fork = $prototypeFactory->makeFork();
say("Getting the Spoon and Fork name:");
is("Spoon: " . $spoon->spoonName() . 
	", Fork: " . $fork->forkName() ,'Spoon: Salad Spoon, Fork: Salad Fork', 'Testing with SaladSpoon and SaladFork');
