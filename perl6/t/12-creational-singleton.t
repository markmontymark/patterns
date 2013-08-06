
use v6;

use Test;

use lib 'blib/lib';

use Patterns::Creational::Singleton;

my $spoonForFirstPerson = SingleSpoon.new();
is $spoonForFirstPerson.toString() , 'The spoon is available.' , "$?FILE first spoon instance";
$spoonForFirstPerson.useSpoon();

my $spoonForSecondPerson = SingleSpoon.new();
is "$spoonForFirstPerson", "$spoonForSecondPerson", "$?FILE Object toString expected to be equal";

$spoonForSecondPerson.useSpoon();
is $spoonForSecondPerson.toString(), 'The spoon is not available.', "$?FILE Second spoon toString should not have spoon available";

$spoonForFirstPerson.returnSpoon();       
is $spoonForSecondPerson.toString(), 'The spoon is available.',"$?FILE First spoon returned ,second spoon toString test";


$spoonForSecondPerson.useSpoon();
is $spoonForSecondPerson.toString() , 'The spoon is not available.' , "$?FILE Second spoon toString";

done();
