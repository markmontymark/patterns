#//DvdTitleActorExpression - Four Of Four Terminal Expressions

require "Behavioral/Interpreter/DvdAbstractExpression"

class DvdTitleActorExpression < DvdAbstractExpression
	def initialize(title)
 		@title = title
	end

	def interpret(ctx)
 		return ctx.getTitlesForActor(@title).join(', ')
	end
end
