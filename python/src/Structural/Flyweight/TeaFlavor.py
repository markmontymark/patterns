
#//TeaFlavor.java - the Concrete Flyweight

from TeaOrder import TeaOrder

class TeaFlavor(TeaOrder) :
	def __init__(self,teaFlavor) :
		self.teaFlavor = teaFlavor

	def getFlavor(self) : 
		return self.teaFlavor

	def serveTea(self,teaOrderContext) :
		return "Serving tea flavor {0} to table number {1}".format( self.teaFlavor, teaOrderContext.getTable())
