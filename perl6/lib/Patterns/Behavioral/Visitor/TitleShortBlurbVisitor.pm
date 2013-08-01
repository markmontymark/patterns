

package Patterns::Behavioral::Visitor::TitleShortBlurbVisitor;


#//TitleShortBlurbVisitor.java - two of two concrete Visitors

use Moo;
extends 'Patterns::Behavioral::Visitor::TitleBlurbVisitor';

sub visit
{
	my($self,$info) = @_;
	my $rinfo = ref $info;
	if($rinfo =~ /BookInfo/)
	{
		$self->setTitleBlurb(
			"SB-Book: " . $info->getTitleName());
   }   
	elsif($rinfo =~ /DvdInfo/)
	{
		$self->setTitleBlurb(
			"SB-DVD: " . $info->getTitleName());
	}

	elsif($rinfo =~ /GameInfo/)
	{
		$self->setTitleBlurb(
			"SB-Game: " . $info->getTitleName());
   }
}

1;
