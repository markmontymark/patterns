#//DvdTitleExpression - Three Of Four Terminal Expressions

require "Behavioral/Interpreter/DvdAbstractExpression"

class DvdTitleExpression < DvdAbstractExpression
	def interpret( ctx)
 		return ctx.getAllTitles().join(', ')
	end
end
