#//DvdTitleActorExpression.java - Four Of Four Terminal Expressions

package Patterns::Behavioral::Interpreter::DvdTitleActorExpression;

use Moo;
extends 'Patterns::Behavioral::Interpreter::DvdAbstractExpression';
has actor => (is=>'rw');
sub BUILDARGS
{
	my($class,$actor) = @_;
	{ actor => $actor}
}


sub interpret
{
	my($self,$ctx) = @_;
	my $titlesAndActors = $ctx->getTitlesForActor($self->actor);
	join ', ',@$titlesAndActors
}

1;
