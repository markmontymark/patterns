#//DvdTitleExpression - Three Of Four Terminal Expressions

define ['Behavioral/Interpreter/DvdAbstractExpression'
],(
DvdAbstractExpression
) ->

	class DvdTitleExpression extends DvdAbstractExpression
		interpret : (ctx)  -> ctx.getAllTitles().join ', '
