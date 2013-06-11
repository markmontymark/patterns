package Patterns::Structural::Composite::OneTeaBag;


#//OneTeaBag.java - one composite extension - the "leaf"

use Moo;
extends 'Patterns::Structural::Composite::TeaBags';

sub countTeaBags { 1 } 
sub add { 0 }
sub remove{ 0 }

1;

