#//DvdTitleActorExpression - Four Of Four Terminal Expressions

use Patterns::Behavioral::Interpreter::DvdAbstractExpression;

class DvdTitleActorExpression is DvdAbstractExpression {

	has $.actor is rw;

	method interpret($ctx) {
		my $objs = $ctx.getTitlesForActor: $.actor;
		$objs.join: ', '
	}

}
