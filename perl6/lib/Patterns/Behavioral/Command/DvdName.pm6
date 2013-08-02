package Patterns::Behavioral::Command::DvdName;
use Moo;
has titleName => (is => 'rw');

# //DvdName - the Receiver

sub BUILDARGS
{
	my($class,$titleName) = @_;

	{
		titleName => $titleName,
	}
}


sub setNameStarsOn 
{
	my $self = shift;
	(my $t = $self->titleName) =~ s/ /*/g;
	$self->titleName($t);
}
sub setNameStarsOff
{
	my $self = shift;
	(my $t = $self->titleName) =~ s/[*]/ /g;
	$self->titleName($t);
}

sub toString
{
	my $self = shift;
	'DVD: ' . $self->titleName
}

1;

