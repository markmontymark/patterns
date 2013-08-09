
gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';


use lib 'blib/lib';
require "Creational::Prototype;

my PrototypeFactory $prototypeFactory = PrototypeFactory.new( 
	spoon => SoupSpoon.new(), 
	fork =>  SaladFork.new());

my $spoon = $prototypeFactory.makeSpoon();
my $fork = $prototypeFactory.makeFork();

is "Spoon: " ~ $spoon.spoonName ~ ", Fork: " ~ $fork.forkName ,
	'Spoon: Soup Spoon, Fork: Salad Fork', 
	"$?FILE Testing with SoupSpoon and SaladFork";

$prototypeFactory = PrototypeFactory.new(
	spoon => SaladSpoon.new(), 
	fork  => SaladFork.new());

$spoon = $prototypeFactory.makeSpoon();
$fork = $prototypeFactory.makeFork();

is "Spoon: " ~ $spoon.spoonName() ~ ", Fork: " ~ $fork.forkName() ,
	'Spoon: Salad Spoon, Fork: Salad Fork', 
	"$?FILE Testing with SaladSpoon and SaladFork";

done();
