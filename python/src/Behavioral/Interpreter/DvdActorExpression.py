#//DvdActorExpression - One Of Four Terminal Expressions
define ['Behavioral/Interpreter/DvdAbstractExpression'
],(
DvdAbstractExpression
) ->
	class DvdActorExpression extends DvdAbstractExpression
		interpret : (ctx)  ->
			ctx.getAllActors().join ', '
