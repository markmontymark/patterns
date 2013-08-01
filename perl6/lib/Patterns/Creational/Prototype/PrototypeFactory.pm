package Patterns::Creational::Prototype::PrototypeFactory;

use Moo;
has prototypeSpoon 	=> (is => 'ro' );#, isa=>sub{ref $_[0]'Patterns::Creational::Prototype::AbstractSpoon');
has prototypeFork 	=> (is => 'ro' );#, isa=>'Patterns::Creational::Prototype::AbstractFork');

sub BUILDARGS
{
	my($class, $spoon, $fork ) = @_;
	{
		prototypeSpoon => $spoon,
		prototypeFork	=> $fork,
	}
}

sub makeSpoon
{
	my $self = shift;
	bless $self->prototypeSpoon->clone, ref $self->prototypeSpoon
}

sub makeFork
{
	my $self = shift;
	bless $self->prototypeFork->clone, ref $self->prototypeFork
}

1;
