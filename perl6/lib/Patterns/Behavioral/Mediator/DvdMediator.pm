#//DvdMediator - The Mediator


package Patterns::Behavioral::Mediator::DvdMediator;

use Moo;
has uppercasetitle => ( is => 'rw');
has lowercasetitle => ( is => 'rw');

sub changeTitle
{
	my( $self, $title ) = @_;
	if( ref $title =~ /lower/i ) ##ugh
	{
		$self->lowercasetitle->resetTitle( $title->title );
	}
	else
	{
		$self->uppercasetitle->resetTitle( $title->title);
	}
}


1;
