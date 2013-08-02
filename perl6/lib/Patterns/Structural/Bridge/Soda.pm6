package Patterns::Structural::Bridge::Soda;

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/pourSoda/);
use Moo;
has sodaImp => is => 'rw';

sub setSodaImp {
	my $self = shift;
	$self->sodaImp( Patterns::Structural::Bridge::SodaImpSingleton::getTheSodaImp() );
}

sub getSodaImp{
	my $self = shift;
	$self->sodaImp
}

1;
