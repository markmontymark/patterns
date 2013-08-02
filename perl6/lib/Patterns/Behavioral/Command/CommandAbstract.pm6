
package Patterns::Behavioral::Command::CommandAbstract;
use base qw(Class::Virtually::Abstract);
__PACKAGE__->virtual_methods(qw(
	execute
));

1;

