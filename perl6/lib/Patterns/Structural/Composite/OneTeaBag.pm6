use Patterns::Structural::Composite::;
class OneTeaBag; {


#//OneTeaBag - one composite extension - the "leaf"


extends 'Patterns::Structural::Composite::TeaBags';

method countTeaBags { 1 } 
method add { 0 }
method remove{ 0 }

}
