use Patterns::Structural::Flyweight::;
class TeaFlavorFactory; {


#//TeaFlavorFactory - the Factory


has flavors => is => 'rw';
has teasMade => is => 'rw';

method new
{
	{flavors => [], teasMade => 0 }
}
   
method getTeaFlavor
{
	my($self,$flavor) = @_;
	if ($self->teasMade > 0) 
	{
		for( @{$self->flavors} )
		{
			return $_ if $flavor eq $_->teaFlavor;
		}
	}
	push @{$self->flavors}, new Patterns::Structural::Flyweight::TeaFlavor($flavor);
	$self->teasMade( $self->teasMade + 1 );
	return $self->flavors->[ $self->teasMade - 1 ];
}
   

}