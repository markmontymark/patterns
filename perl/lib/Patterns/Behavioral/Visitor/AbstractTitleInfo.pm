package Patterns::Behavioral::Visitor::AbstractTitleInfo;

#//AbstractTitleInfo.java - the abstract Visitee
use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/
	accept
/);
use Moo;
has titleName => (is => 'rw');
	
sub setTitleName
{
	my($self,$title) = @_;
	$self->titleName($title);
}
sub getTitleName
{
	my $self = shift;
	$self->titleName
}
    
1;


