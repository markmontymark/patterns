

package Patterns::Behavioral::Template_Method::DvdTitleInfo;


#//DvdTitleInfo - one of three concrete templates

use Moo;
extends 'Patterns::Behavioral::Template_Method::TitleInfo';

has titleName => (is => 'rw');
has star => (is => 'rw');
has region => (is => 'rw');

sub BUILDARGS
{
	my($class,$titleName,$star,$region) = @_;
	{
		titleName => $titleName,
		star => $star,
		region => $region
	}
}

sub BUILD
{
	my($self) = @_;
	$self->setTitleName( $self->titleName);
	$self->setStar( $self->star);
	$self->setRegion( $self->region);
	
}

sub setStar
{
	my($self,$star) = @_;
	$self->star($star);
}
sub getStar {	shift->star }
sub setRegion
{
	my($self,$region ) = @_;
	$self->region( $region );
}
sub getRegion{	shift->region }
   
sub getTitleBlurb
{
	my($self) = @_;
	"DVD: " . $self->getTitleName() .  ", starring " . $self->getStar();
}

1;
