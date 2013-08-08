#//DvdTitleExpression - Three Of Four Terminal Expressions

require "DvdAbstractExpression"

class DvdTitleExpression < DvdAbstractExpression
	def interpret( ctx) 		return ', '.join( ctx.getAllTitles())
