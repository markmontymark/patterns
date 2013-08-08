#//TitleBlurbVisitor - the abstract Visitor
class TitleBlurbVisitor:

	#def __init__():pass

	titleBlurb   = None

	def setTitleBlurb (self,blurbIn) :
		self.titleBlurb = blurbIn

	def getTitleBlurb (self): 
		return self.titleBlurb

	def visit (self,info) :
		raise Exception("Unimplemented method TitleBlurbVisitor.visit")
