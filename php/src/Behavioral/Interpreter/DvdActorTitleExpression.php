<?

# //DvdActorTitleExpression - Two Of Four Terminal Expressions
class DvdActorTitleExpression extends DvdAbstractExpression
{
	public $title;
	function __construct($title)
	{
		$this->title = $title;
	}


	function interpret( DvdInterpreterContext $ctx )
	{
		$actorsForTitle = $ctx->getActorsForTitle($this->title);
		return implode(', ',$actorsForTitle );
	}
}


