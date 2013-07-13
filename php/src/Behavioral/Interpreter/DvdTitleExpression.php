
<?

# //DvdTitleExpression - One Of the Terminal Expressions

require_once 'DvdAbstractExpression.php';
require_once 'DvdInterpreterContext.php';

class DvdTitleExpression extends DvdAbstractExpression
{
	function interpret (DvdInterpreterContext $ctx)
	{
		return implode(', ',$ctx->getAllTitles());
	}
}


