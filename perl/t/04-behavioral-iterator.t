use v5.016;
use strict;
use warnings;
use Test::More tests => 3;

BEGIN{ use_ok 'Patterns::Behavioral::Iterator'};

my $movies = new Patterns::Behavioral::Iterator::DvdList;
$movies->append("10 Things I Hate About You");
$movies->append("Shakespeare In Love");
$movies->append("O (2001)");
$movies->append("American Pie 2");
$movies->append("Scotland, PA.");
$movies->append("Hamlet (2000)");

my $iterator = $movies->createIterator();
while (!$iterator->isDone()) 
{
	say($iterator->currentItem());
	$iterator->next();  
}
ok("Iterator didn't loop forever");
       
$movies->remove("American Pie 2");
       
say(" ");   
$iterator->first();       
while (!$iterator->isDone()) 
{
	say($iterator->currentItem());
	$iterator->next();  
}       
ok("Iterator didn't loop forever");


done_testing();
