use Patterns::Structural::Composite::;
class TeaBags; {

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/countTeaBags add remove/);


has parent => is => 'rw';
has name => is => 'rw';
has teaBagList => is => 'rw';

method new
{
	my($class,$name) = @_;
	{ name => $name }
}

}