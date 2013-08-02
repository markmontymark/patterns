package Patterns::Creational::Builder::SoupBuffetBuilder;

use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/setSoupBuffetName/);
use Moo;
has soupBuffet => (is=>'rw');
        
sub getSoupBuffet {
	my $self = shift;
	return $self->soupBuffet;
}

sub buildSoupBuffet {
	my $self = shift;
	$self->soupBuffet ( new Patterns::Creational::Builder::SoupBuffet() );
}

sub buildChickenSoup {
	my $self = shift;
	$self->soupBuffet->chickenSoup ( new Patterns::Creational::Builder::ChickenSoup());
}
sub buildClamChowder {
	my $self = shift;
	$self->soupBuffet->clamChowder ( new Patterns::Creational::Builder::ClamChowder());
}
sub buildFishChowder {
	my $self = shift;
	$self->soupBuffet->fishChowder ( new Patterns::Creational::Builder::FishChowder());
}
sub buildMinnestrone {
	my $self = shift;
	$self->soupBuffet->minnestrone ( new Patterns::Creational::Builder::Minnestrone());
}
sub buildPastaFazul {
	my $self = shift;
	$self->soupBuffet->pastaFazul ( new Patterns::Creational::Builder::PastaFazul());
}
sub buildTofuSoup {
	my $self = shift;
	$self->soupBuffet->tofuSoup ( new Patterns::Creational::Builder::TofuSoup());
}
sub buildVegetableSoup {
	my $self = shift;
	$self->soupBuffet->vegetableSoup( new Patterns::Creational::Builder::VegetableSoup() );
}

1;
