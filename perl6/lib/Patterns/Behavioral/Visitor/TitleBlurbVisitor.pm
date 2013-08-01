
package Patterns::Behavioral::Visitor::TitleBlurbVisitor;

#//TitleBlurbVisitor.java - the abstract Visitor
use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods( qw/ 
visit 
/);
use Moo;
has titleBlurb => (is => 'rw');

sub setTitleBlurb
{
	my($self,$blurbIn) = @_;
	$self->titleBlurb($blurbIn);
}

sub getTitleBlurb 
{
	my $self = shift;
	$self->titleBlurb
}
    

1;
