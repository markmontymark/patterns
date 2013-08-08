#//DvdTitleActorExpression - Four Of Four Terminal Expressions

from DvdAbstractExpression import DvdAbstractExpression

class DvdTitleActorExpression(DvdAbstractExpression):
	def initialize(title) :
		self.title = title

	def interpret(self,ctx) :
		return ', '.join(ctx.getTitlesForActor(self.title))
