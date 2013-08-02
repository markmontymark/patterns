package Patterns::Behavioral::Memento::DvdMemento;

use Moo;
has cache => (is => 'ro');
sub BUILDARGS
{
	{
		cache => {}
	}
}

sub setState
{
	my($self, $objToSave) = @_;
	for( keys %$objToSave)
	{
		$self->cache->{$_} = $objToSave->{$_};
	}
}

sub getState
{
	shift->cache
}

1;
