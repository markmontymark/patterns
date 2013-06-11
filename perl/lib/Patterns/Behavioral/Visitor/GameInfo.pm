#//GameInfo.java - three of three concrete Visitees

package Patterns::Behavioral::Visitor::GameInfo;

use Moo;
extends 'Patterns::Behavioral::Visitor::AbstractTitleInfo';

sub BUILDARGS
{
	my($class,$titleName ) = @_;
	{
		titleName => $titleName
	}
}
   
sub accept
{
	my($self,$titleBlurbVisitor) = @_;
	$titleBlurbVisitor->visit($self);
}

1;

