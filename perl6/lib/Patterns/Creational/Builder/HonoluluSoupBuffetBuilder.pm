package Patterns::Creational::Builder::HonoluluSoupBuffetBuilder;

# Two of Two Builder Subclasses

use Moo;
extends 'Patterns::Creational::Builder::SoupBuffetBuilder';

sub buildClamChowder {
	my $self = shift;
	$self->soupBuffet->clamChowder ( new Patterns::Creational::Builder::HonoluluClamChowder() );
}
sub buildFishChowder {
	my $self = shift;
	$self->soupBuffet->fishChowder ( new Patterns::Creational::Builder::HonoluluFishChowder() );
}

sub setSoupBuffetName {
	my $self = shift;
	$self->soupBuffet->soupBuffetName( "Honolulu Soup Buffet");
}

1;
