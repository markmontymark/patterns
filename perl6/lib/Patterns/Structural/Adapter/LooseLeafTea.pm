package Patterns::Structural::Adapter::LooseLeafTea;


#//LooseLeafTea - the adaptee

use Moo;
has teaIsSteeped => is => 'rw', default => sub {0};

sub steepTea 
{
	my $self = shift;
	$self->teaIsSteeped(1);
}

1;
