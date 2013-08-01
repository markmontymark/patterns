package Patterns::Structural::Composite::TeaBags;

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/countTeaBags add remove/);
use Moo;

has parent => is => 'rw';
has name => is => 'rw';
has teaBagList => is => 'rw';

sub BUILDARGS
{
	my($class,$name) = @_;
	{ name => $name }
}

1;
