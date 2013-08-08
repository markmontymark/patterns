
#//SodaImpSingleton.java - a Singleton to hold the current SodaImp

class SodaImpSingleton

	_sodaimp = None
	
	def initialize(sodaimp)		SodaImpSingleton._sodaimp = sodaimp

	@staticmethod
	def getTheSodaImp() 		return SodaImpSingleton._sodaimp

