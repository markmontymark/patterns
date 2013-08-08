#//DvdActorExpression - One Of Four Terminal Expressions
from DvdAbstractExpression import DvdAbstractExpression 

class DvdActorExpression(DvdAbstractExpression) :
	def interpret(self,ctx) :
		return ', '.join(ctx.getAllActors())
