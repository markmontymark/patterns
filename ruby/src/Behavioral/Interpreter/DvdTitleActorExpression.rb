#//DvdTitleActorExpression - Four Of Four Terminal Expressions

require "DvdAbstractExpression"

class DvdTitleActorExpression < DvdAbstractExpression
	def initialize(title) 		@title = title

	def interpret(ctx) 		return ', '.join(ctx.getTitlesForActor(@title))
