package Patterns::Creational::Prototype::AbstractFork;

#//AbstractFork - Two of Two Prototypes

use base 'Class::Virtually::Abstract';
use Moo;
with 'Patterns::Creational::Prototype::Cloneable';

has forkName => (is => 'rw' );

1;
