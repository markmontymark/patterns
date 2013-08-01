package Patterns::Structural::Bridge::MediumSoda;


#//MediumSoda.java - one of two classes extending the Abstract
use Moo;
extends 'Patterns::Structural::Bridge::Soda';

sub BUILD
{
	my($self) = @_;
	$self->setSodaImp();
}

sub pourSoda 
{
	my $self = shift;
	my $sodaImp = $self->getSodaImp;
	my @retval;
	push @retval,$sodaImp->pourSodaImp for 0..1;
	join ' ',@retval
}

1;
