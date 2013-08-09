#//DvdActorTitleExpression - Two Of Four Terminal Expressions

require "Behavioral/Interpreter/DvdAbstractExpression"

class DvdActorTitleExpression < DvdAbstractExpression
	def initialize(title)
		@title = title
	end

	def interpret(ctx)
 		return ctx.getActorsForTitle(@title).sort.join(', ');
	end
end
