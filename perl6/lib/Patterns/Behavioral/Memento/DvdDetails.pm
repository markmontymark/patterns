#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Memento
#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento



package Patterns::Behavioral::Memento::DvdDetails;
use Moo;

has titleName => (is => 'rw');
has stars => (is => 'rw');
has region => (is => 'rw');
has memento => (is => 'rw');

sub BUILDARGS
{
	my($class,$titleName,$stars,$region) = @_;
	{
		titleName => $titleName,
		stars => $stars,
		region => $region
	}
}

sub addStar
{
	my($self, $star) = @_;
	push @{$self->stars}, $star;
}


sub starsAsString
{
	my $self = shift;
	join ', ',@{$self->stars}
}  
   
sub formatDvdDetails
{
	my $self = shift;
	"DVD: " . $self->titleName . 
		", starring: " . $self->starsAsString . 
		", encoding region: " . $self->region 
}   
   
#   //sets current state to what DvdMemento has
sub setDvdMemento
{
	my($self, $memento) = @_;
	{
		no strict 'refs';
		for (keys %{$memento->cache})
		{
			$self->$_( $memento->cache->{$_});
		}
	}
}

#//save current state of DvdDetails in a DvdMemento
sub createDvdMemento
{
	my $self = shift;
	my $mementoToReturn = new Patterns::Behavioral::Memento::DvdMemento();
	$mementoToReturn->setState($self);
	$mementoToReturn
}


1;   
