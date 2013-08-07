use Patterns::Structural::Proxy::;
class PotOfTeaInterface; {

#////PotOfTeaInterface will insure that the proxy 
#////  has the same methods as it's real subject

use Moo::Role;

method pourTea { ... }

}