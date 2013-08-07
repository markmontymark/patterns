use Patterns::Structural::Facade::;
class FacadeWater; {


#//FacadeWater - two of three classes the facade calls

has isBoiling => is => 'rw';

method new
{
	{ isBoiling => 0 }
}
    
method boil
{
	my $self = shift;
	$self->isBoiling(1);
}

}