# //DvdActorTitleExpression.java - Two Of Four Terminal Expressions
package Patterns::Behavioral::Interpreter::DvdActorTitleExpression;

use Moo;
extends 'Patterns::Behavioral::Interpreter::DvdAbstractExpression';
has title => (is => 'rw');
sub BUILDARGS
{
	my($class,$title) = @_;
	print "In __PACKAGE__ ctor args ",@_,"\n";
	{
		title => $title,
	}
}


sub interpret
{
	my($self,$ctx) = @_;
	print "In __PACKAGE__, title ",$self->title,"\n";
   my $actorsForTitle = $ctx->getActorsForTitle($self->title);
	join ', ',@$actorsForTitle ## maybe need to map{$_->toString}?
}

1;
