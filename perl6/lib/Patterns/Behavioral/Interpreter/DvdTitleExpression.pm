#//DvdTitleExpression - Three Of Four Terminal Expressions

use Patterns::Behavioral::Interpreter::DvdAbstractExpression;

class DvdTitleExpression is DvdAbstractExpression {

	method interpret($ctx) {
		my $titles = $ctx.titles;
		$titles.join: ', '
	}

}
