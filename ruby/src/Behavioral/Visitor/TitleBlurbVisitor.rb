#//TitleBlurbVisitor - the abstract Visitor
class TitleBlurbVisitor

	#def __init__():pass

	titleBlurb   = None

	def setTitleBlurb (blurbIn) 		@titleBlurb = blurbIn

	def getTitleBlurb (self)		return @titleBlurb

	def visit (info) 		raise Exception("Unimplemented method TitleBlurbVisitor.visit")
