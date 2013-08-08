
from SodaImpSingleton import SodaImpSingleton

class Soda:

	def initialize()
		raise Exception("Can't instantiate abstract class, Soda")

	def setSodaImp(self) : 
		self.sodaImp = SodaImpSingleton._sodaimp

	def getSodaImp(self) :
		return self.sodaImp

	def pourSoda(self) : 
		raise Exception("Unimplemented method Soda.pourSoda")

