package Patterns::Structural::Bridge::SodaImp;

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods( qw/pourSodaImp/ );
use Moo;

1;
