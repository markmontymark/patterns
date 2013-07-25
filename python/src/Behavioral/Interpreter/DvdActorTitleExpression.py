#//DvdActorTitleExpression - Two Of Four Terminal Expressions

define ['Behavioral/Interpreter/DvdAbstractExpression'
],(
DvdAbstractExpression
) ->

	class DvdActorTitleExpression extends DvdAbstractExpression
		constructor : (@title) ->
		interpret : (ctx) -> ctx.getActorsForTitle(@title).join ', '
