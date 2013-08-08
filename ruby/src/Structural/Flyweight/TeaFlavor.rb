
#//TeaFlavor - the Concrete Flyweight

require "Structural/Flyweight/TeaOrder"

class TeaFlavor < TeaOrder
	def initialize(teaFlavor)
 		@teaFlavor = teaFlavor
	end

	def getFlavor()
 		return @teaFlavor
	end

	def serveTea(teaOrderContext)
 		return "Serving tea flavor {0} to table number {1}".format( @teaFlavor, teaOrderContext.getTable())
	end

end
