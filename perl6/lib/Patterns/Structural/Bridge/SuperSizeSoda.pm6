use Patterns::Structural::Bridge::;
class SuperSizeSoda; {


#//SuperSizeSoda - two of two classes extending the Abstract

extends 'Patterns::Structural::Bridge::Soda';
method BUILD
{
	my $self = shift;
	$self->setSodaImp();
}

method pourSoda
{
	my $self = shift;
	my @retval;
   push @retval,$self->sodaImp->pourSodaImp for 1..5;
	join ' ',@retval
}

}