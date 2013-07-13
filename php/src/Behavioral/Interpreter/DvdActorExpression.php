<?

# //DvdActorExpression - One Of Four Terminal Expressions

require_once 'DvdAbstractExpression.php';
require_once 'DvdInterpreterContext.php';

class DvdActorExpression extends DvdAbstractExpression
{
	function interpret (DvdInterpreterContext $ctx)
	{
		return implode(', ',$ctx->getAllActors());
	}
}


