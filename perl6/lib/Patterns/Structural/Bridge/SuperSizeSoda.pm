package Patterns::Structural::Bridge::SuperSizeSoda;


#//SuperSizeSoda.java - two of two classes extending the Abstract
use Moo;
extends 'Patterns::Structural::Bridge::Soda';
sub BUILD
{
	my $self = shift;
	$self->setSodaImp();
}

sub pourSoda
{
	my $self = shift;
	my @retval;
   push @retval,$self->sodaImp->pourSodaImp for 1..5;
	join ' ',@retval
}

1;
