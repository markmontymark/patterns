#//DvdActorTitleExpression - Two Of Four Terminal Expressions

require "DvdAbstractExpression"

class DvdActorTitleExpression < DvdAbstractExpression
	def initialize(title)		@title = title

	def interpret(ctx) 		return ', '.join(ctx.getActorsForTitle(@title))
