# //DvdActorTitleExpression.java - Two Of Four Terminal Expressions
package Patterns::Behavioral::Interpreter::DvdActorTitleExpression;

use Moo;
extends 'Patterns::Behavioral::Interpreter::DvdAbstractExpression';
has title => (is => 'rw');
sub BUILDARGS
{
	my($class,$title) = @_;
	{
		title => $title,
	}
}


sub interpret
{
	my($self,$ctx) = @_;
   my $actorsForTitle = $ctx->getActorsForTitle( $self->title);
	join ', ',@$actorsForTitle ## maybe need to map{$_->toString}?
}

1;
