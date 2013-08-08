#//DvdActorTitleExpression - Two Of Four Terminal Expressions

from DvdAbstractExpression import DvdAbstractExpression

class DvdActorTitleExpression(DvdAbstractExpression) :
	def initialize(title):
		self.title = title

	def interpret(self,ctx) :
		return ', '.join(ctx.getActorsForTitle(self.title))
