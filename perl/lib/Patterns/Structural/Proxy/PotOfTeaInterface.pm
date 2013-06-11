package Patterns::Structural::Proxy::PotOfTeaInterface;

#////PotOfTeaInterface will insure that the proxy 
#////  has the same methods as it's real subject

use Moo::Role;

sub pourTea { ... }

1;
