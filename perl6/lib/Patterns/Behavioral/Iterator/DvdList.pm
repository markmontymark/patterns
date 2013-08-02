

#//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)

use Patterns::Behavioral::Iterator::IteratorInterface;
use Patterns::Behavioral::Iterator::DvdListIterator;

class DvdList;

has @!titles;
has $.titleCount is rw;
has IteratorInterface iterator is rw;

sub BUILDARGS
{
	{
		titles => [],
		titleCount => 0,
	}
}

sub append
{
	my($self,$title) = @_;
	push @{$self->titles},$title;
	$self->titleCount($self->titleCount + 1 );
   
}

##
## doesn't handle multiple removal of same title N times, only removes first
##
sub remove 
{
	my($self,$title) = @_;
   my $found = 0;
	my $foundI = -1;
	my $i  = 0;	
   for( @{$self->titles})
	{
		if($title eq $_)
		{
			$foundI = $i;
			last;
		}
		$i ++;
   }
	if($foundI != -1 )
	{
		$self->titleCount( $self->titleCount - 1 );
		my $t = $self->titles;
		splice(@$t,$foundI,1);		
	}
}

sub createIterator
{	
	my $self = shift;
	return $self->iterator if $self->iterator;
	$self->iterator(new Patterns::Behavioral::Iterator::DvdListIterator($self));
	$self->iterator
}

1; 
