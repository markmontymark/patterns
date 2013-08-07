use Patterns::Structural::Proxy::;
class PotOfTeaProxy; {

#//PotOfTeaProxy - the Proxy

with 'Patterns::Structural::Proxy::PotOfTeaInterface';

has potOfTea => is => 'rw';
method pourTea
{
	my $self = shift;
	$self->potOfTea( new Patterns::Structural::Proxy::PotOfTea )
		unless defined $self->potOfTea;
   $self->potOfTea->pourTea()
}

}