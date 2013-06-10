#//DvdAbstractExpression.java - The Abstract Expression
package Patterns::Behavioral::Interpreter::DvdAbstractExpression;
use base qw(Class::Virtually::Abstract);
__PACKAGE__->virtual_methods(qw(
    interpret
));

1;
