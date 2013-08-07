#//PotOfTeaProxy - the Proxy

use Patterns::Structural::Proxy::PotOfTeaInterface;
use Patterns::Structural::Proxy::PotOfTea;

class PotOfTeaProxy does PotOfTeaInterface {

has PotOfTea $.potOfTea is rw;

	method pourTea
	{
		$.potOfTea = PotOfTea.new() unless $.potOfTea.defined;
		$.potOfTea.pourTea()
	}

}
