<?

#//DvdAbstractExpression - The Abstract Expression

require_once 'DvdInterpreterContext.php';

abstract class DvdAbstractExpression
{
	abstract function interpret(DvdInterpreterContext $ctx);
}
