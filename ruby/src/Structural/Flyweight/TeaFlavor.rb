
#//TeaFlavor - the Concrete Flyweight

require_relative "TeaOrder"

class TeaFlavor < TeaOrder
	def initialize(teaFlavor)
 		@teaFlavor = teaFlavor
	end

	def getFlavor()
 		return @teaFlavor
	end

	def serveTea(teaOrderContext)
 		return "Serving tea flavor #{@teaFlavor} to table number #{teaOrderContext.getTable()}"
	end

end
