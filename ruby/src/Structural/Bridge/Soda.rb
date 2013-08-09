
require "Structural/Bridge/SodaImpSingleton"

class Soda

	def initialize()
		raise Exception("Can't instantiate abstract class, Soda")
	end

	def setSodaImp()
 		@sodaImp = SodaImpSingleton.instance.getTheSodaImp
	end

	def getSodaImp()
 		return @sodaImp
	end

	def pourSoda()
 		raise Exception("Unimplemented method Soda.pourSoda")
	end

end

