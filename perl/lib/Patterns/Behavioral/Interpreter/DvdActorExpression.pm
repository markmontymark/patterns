# //DvdActorExpression.java - One Of Four Terminal Expressions


package Patterns::Behavioral::Interpreter::DvdActorExpression;
use Moo;
extends 'Patterns::Behavioral::Interpreter::DvdAbstractExpression';
has actor => ( is => 'ro' );

sub BUILDARGS
{
	my($class,$actor) = @_;
	{ actor => $actor }
}

sub interpret 
{
	my($self,$ctx) = @_;
	my $actors = $ctx->getAllActors;
	join ', ',@$actors
}

1;
