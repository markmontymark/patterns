package Patterns::Creational::Builder::BostonSoupBuffetBuilder;


#//BostonSoupBuffetBuilder - One of Two Builder Subclasses

use Moo;
extends 'Patterns::Creational::Builder::SoupBuffetBuilder';

sub buildClamChowder {
	my $self = shift;
	$self->soupBuffet->clamChowder ( new Patterns::Creational::Builder::BostonClamChowder() );
}
sub buildFishChowder {
	my $self = shift;
	$self->soupBuffet->fishChowder ( new Patterns::Creational::Builder::BostonFishChowder() );
}

sub setSoupBuffetName {
	my $self = shift;
	$self->soupBuffet->soupBuffetName( "Boston Soup Buffet");
}

1;

