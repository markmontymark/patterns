
require "SodaImpSingleton"

class Soda

	def initialize()
		raise Exception("Can't instantiate abstract class, Soda")

	def setSodaImp(self) 		@sodaImp = SodaImpSingleton._sodaimp

	def getSodaImp(self) 		return @sodaImp

	def pourSoda(self) 		raise Exception("Unimplemented method Soda.pourSoda")

