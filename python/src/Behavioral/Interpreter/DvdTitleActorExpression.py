#//DvdTitleActorExpression - Four Of Four Terminal Expressions

from DvdAbstractExpression import DvdAbstractExpression

class DvdTitleActorExpression(DvdAbstractExpression):
	def __init__(self,title) :
		self.title = title

	def interpret(self,ctx) :
		return ', '.join(ctx.getTitlesForActor(self.title))
