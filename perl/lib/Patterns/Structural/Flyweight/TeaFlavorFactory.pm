package Patterns::Structural::Flyweight::TeaFlavorFactory;


#//TeaFlavorFactory.java - the Factory

use Moo;
has flavors => is => 'rw';
has teasMade => is => 'rw';

sub BUILDARGS
{
	{flavors => [], teasMade => 0 }
}
   
sub getTeaFlavor
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
   

1;
