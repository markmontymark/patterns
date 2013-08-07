use Patterns::Structural::Bridge::;
class MediumSoda; {


#//MediumSoda - one of two classes extending the Abstract

extends 'Patterns::Structural::Bridge::Soda';

method BUILD
{
	my($self) = @_;
	$self->setSodaImp();
}

method pourSoda 
{
	my $self = shift;
	my $sodaImp = $self->getSodaImp;
	my @retval;
	push @retval,$sodaImp->pourSodaImp for 0..1;
	join ' ',@retval
}

}