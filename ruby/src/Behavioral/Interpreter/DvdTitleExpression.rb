#//DvdTitleExpression - Three Of Four Terminal Expressions

from DvdAbstractExpression import DvdAbstractExpression

class DvdTitleExpression(DvdAbstractExpression) :
	def interpret(self, ctx) :
		return ', '.join( ctx.getAllTitles())
