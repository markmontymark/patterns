
#//TeaFlavor.java - the Concrete Flyweight

require "TeaOrder"

class TeaFlavor < TeaOrder
	def initialize(teaFlavor) 		@teaFlavor = teaFlavor

	def getFlavor(self) 		return @teaFlavor

	def serveTea(teaOrderContext) 		return "Serving tea flavor {0} to table number {1}".format( @teaFlavor, teaOrderContext.getTable())
