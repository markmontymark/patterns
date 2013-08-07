use Patterns::Structural::Flyweight::;
class TeaOrder; {

#//TeaOrder - the Flyweight

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods( qw/ serveTea / );

}