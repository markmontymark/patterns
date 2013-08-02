package Patterns::Structural::Proxy::PotOfTea;


#//PotOfTea - the Real Subject

use Moo;
with 'Patterns::Structural::Proxy::PotOfTeaInterface';

sub pourTea
{
	"Pouring tea"
}

1;
