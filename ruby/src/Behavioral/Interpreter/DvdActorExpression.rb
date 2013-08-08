#//DvdActorExpression - One Of Four Terminal Expressions
require "DvdAbstractExpression"

class DvdActorExpression < DvdAbstractExpression
	def interpret(ctx) 		return ', '.join(ctx.getAllActors())
