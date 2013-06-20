#//DvdTitleActorExpression - Four Of Four Terminal Expressions

define ['Behavioral/Interpreter/DvdAbstractExpression'
],(
DvdAbstractExpression
) ->

	class DvdTitleActorExpression extends DvdAbstractExpression
		constructor : (@title) ->
		interpret : (ctx)  ->
			ctx.getTitlesForActor(@title).join ', '
