package Patterns::Behavioral::Template_Method::TitleInfo;

#//TitleInfo - the abstract Template
use base 'Class::Virtually::Abstract';
__PACKAGE__->virtual_methods(qw/
getTitleBlurb
/);

use Moo;
has titleName => (is => 'rw');

#//the "template method" - 
#   //  calls the concrete class methods, is not overridden
sub ProcessTitleInfo 
{
	my $self = shift;
   my @titleInfo = ();

	push @titleInfo,$self->getTitleBlurb();
	push @titleInfo,$self->getRegionInfo();
	join '',@titleInfo
}  
   
sub setTitleName
{
	my($self, $title) = @_;
	$self->titleName($title);
}
sub getTitleName
{
	shift->titleName
}

#   //this is a "hook operation", which may be overridden, 
#   //hook operations usually do nothing if not overridden 
sub getRegionInfo 
{
	" "
}

1;
