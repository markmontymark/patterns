package Patterns::Creational::Prototype::AbstractSpoon;

#//AbstractSpoon - One of Two Prototypes

use base 'Class::Virtually::Abstract';
use Moo;
with 'Patterns::Creational::Prototype::Cloneable';

has spoonName => (is => 'rw' );

1;
