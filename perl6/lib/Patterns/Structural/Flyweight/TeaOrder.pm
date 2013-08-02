package Patterns::Structural::Flyweight::TeaOrder;

#//TeaOrder - the Flyweight

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods( qw/ serveTea / );

1;
