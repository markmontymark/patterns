use v6;
use Test;

use lib 'blib/lib';

use Patterns::Behavioral::Iterator;

my $movies = DvdList.new();
$movies.append("10 Things I Hate About You");
$movies.append("Shakespeare In Love");
$movies.append("O (2001)");
$movies.append("American Pie 2");
$movies.append("Scotland, PA.");
$movies.append("Hamlet (2000)");

my $elems = $movies.titleCount;

my $iterator = DvdListIterator.new( $movies );
$iterator.reset();
my $i = 0;

until $iterator.isDone()
{
	$i++;
	$iterator.advance();  
}
is($i, $elems, "$?FILE Iterator looped $i times");
       
$movies.remove("American Pie 2");
$iterator.reset();

$i = 0;
until $iterator.isDone()
{
	$i++;
	#say  $iterator.currentItem();
	$iterator.advance();  
}       
is($i, $elems - 1, "$?FILE Iterator looped " ~ ($elems - 1) ~ " times");


done();
