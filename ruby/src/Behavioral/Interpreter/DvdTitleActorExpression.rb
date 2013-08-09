#//DvdTitleActorExpression - Four Of Four Terminal Expressions

require "Behavioral/Interpreter/DvdAbstractExpression"

class DvdTitleActorExpression < DvdAbstractExpression
	def initialize(title)
 		@title = title
	end

	def interpret(ctx)
 		ctx.getTitlesForActor(@title).sort.join(', ')
	end
end
