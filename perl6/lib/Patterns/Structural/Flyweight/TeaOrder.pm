package Patterns::Structural::Flyweight::TeaOrder;

#//TeaOrder.java - the Flyweight

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods( qw/ serveTea / );

1;
