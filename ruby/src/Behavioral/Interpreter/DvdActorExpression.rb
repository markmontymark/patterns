#//DvdActorExpression - One Of Four Terminal Expressions
require "Behavioral/Interpreter/DvdAbstractExpression"

class DvdActorExpression < DvdAbstractExpression
	def interpret(ctx)
 		ctx.getAllActors().join(', ')
	end
end
