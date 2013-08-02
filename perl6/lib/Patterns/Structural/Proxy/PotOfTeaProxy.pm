package Patterns::Structural::Proxy::PotOfTeaProxy;

#//PotOfTeaProxy - the Proxy
use Moo;
with 'Patterns::Structural::Proxy::PotOfTeaInterface';

has potOfTea => is => 'rw';
sub pourTea
{
	my $self = shift;
	$self->potOfTea( new Patterns::Structural::Proxy::PotOfTea )
		unless defined $self->potOfTea;
   $self->potOfTea->pourTea()
}

1;
