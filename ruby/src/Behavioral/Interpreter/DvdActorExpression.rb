#//DvdActorExpression - One Of Four Terminal Expressions
require "Behavioral/Interpreter/DvdAbstractExpression"

class DvdActorExpression < DvdAbstractExpression
	def interpret(ctx)
 		return ', '.join(ctx.getAllActors())
	end
end
