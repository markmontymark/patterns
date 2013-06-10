# //DvdActorExpression.java - One Of Four Terminal Expressions


package Patterns::Behavioral::Interpreter::DvdActorExpression;
use Moo;
extends 'Patterns::Behavioral::Interpreter::DvdAbstractExpression';
has kludge => ( is => 'ro' );

sub interpret 
{
	my($self,$ctx) = @_;
	my $actors = $ctx->getAllActors;
	join ', ',@$actors
}

1;
