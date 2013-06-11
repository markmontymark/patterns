
#//DvdInfo.java - two of three concrete Visitees

package Patterns::Behavioral::Visitor::DvdInfo;

use Moo;
extends 'Patterns::Behavioral::Visitor::AbstractTitleInfo';

has star => (is => 'rw' );
has region => (is => 'rw' );

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
	$self->setTitleName( $self->titleName );
	$self->setStar( $self->star );
	$self->setRegion( $self->region );
}    
   
sub setStar
{
	my($self,$star) = @_;
	$self->star($star);
}
sub getStar { shift->star }

sub setRegion
{
	my($self,$region) = @_;
	$self->region($region);
}
sub getRegion { shift->region }
   
sub accept
{
	my($self,$titleBlurbVisitor) = @_;
	$titleBlurbVisitor->visit($self);
} 

1;
