

#//DvdList.java - the Concrete Aggregate (with a Concrete Iterator inner class)


   
package Patterns::Behavioral::Iterator::DvdListIterator;
use Moo;
with('Patterns::Behavioral::Iterator::IteratorInterface');

has currentPosition => (is => 'rw');
has list => (is => 'ro');

sub BUILDARGS
{
	my($class,$list) = @_;
	{
		list => $list,
		currentPosition => 0,
	}
}
       
sub first 
{
	my $self  = shift;
	$self->currentPosition(0);
}
       
sub next
{
	my $self = shift;
   $self->currentPosition( $self->currentPosition + 1) if $self->currentPosition < $self->list->titleCount;
}
       
sub isDone 
{
	my $self = shift;
	$self->currentPosition >= $self->list->titleCount
}
       
sub currentItem
{
	my $self = shift;
	$self->list->titles->[ $self->currentPosition ]
}

1;

