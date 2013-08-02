# //DvdActorExpression - One Of Four Terminal Expressions

use Patterns::Behavioral::Interpreter::DvdAbstractExpression;
use Patterns::Behavioral::Interpreter::DvdInterpreterContext;

class DvdActorExpression is DvdAbstractExpression {

	method interpret($ctx) {
		my $actors = $ctx.actors;
		$actors.join: ', '
	}

}
