use Patterns::Structural::Proxy::;
class PotOfTea; {


#//PotOfTea - the Real Subject


with 'Patterns::Structural::Proxy::PotOfTeaInterface';

method pourTea
{
	"Pouring tea"
}

}