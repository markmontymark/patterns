use Patterns::Structural::Bridge::;
class Soda; {

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/pourSoda/);

has sodaImp => is => 'rw';

method setSodaImp {
	my $self = shift;
	$self->sodaImp( Patterns::Structural::Bridge::SodaImpSingleton::getTheSodaImp() );
}

method getSodaImp{
	my $self = shift;
	$self->sodaImp
}

}