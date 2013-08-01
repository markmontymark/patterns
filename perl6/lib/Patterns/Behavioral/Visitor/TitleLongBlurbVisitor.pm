
package Patterns::Behavioral::Visitor::TitleLongBlurbVisitor;

# //TitleLongBlurbVisitor.java - one of two concrete Visitors
use Moo;
extends 'Patterns::Behavioral::Visitor::TitleBlurbVisitor';


sub visit
{
	my($self,$info) = @_;
	my $rinfo = ref $info;
	if($rinfo =~ /BookInfo/)
	{
		$self->setTitleBlurb(
			"LB-Book: " . $info->titleName  .
			", Author: " .  $info->author);
   }   
  	elsif( $rinfo =~ /DvdInfo/)
	{
		$self->setTitleBlurb(
			"LB-DVD: " .  $info->getTitleName() . 
			", starring " . $info->getStar() . 
			", region: " . $info->getRegion());
   }   
  	elsif( $rinfo =~ /GameInfo/)
	{
		$self->setTitleBlurb(
			"LB-Game: " . $info->getTitleName());
   }
}   

1;
