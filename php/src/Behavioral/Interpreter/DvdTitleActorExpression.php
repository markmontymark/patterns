
<?

# //DvdTitleActorExpression - Two Of Four Terminal Expressions
class DvdTitleActorExpression extends DvdAbstractExpression
{
	public $actor;
	function __construct($actor)
	{
		$this->actor = $actor;
	}


	function interpret( DvdInterpreterContext $ctx )
	{
		$titlesForActor = $ctx->getActorsForTitle($this->actor);
		return implode(', ',$titlesForActor );
	}
}


