
#//SodaImpSingleton.java - a Singleton to hold the current SodaImp

class SodaImpSingleton:

	_sodaimp = None
	
	def __init__(self,sodaimp):
		SodaImpSingleton._sodaimp = sodaimp

	@staticmethod
	def getTheSodaImp() : 
		return SodaImpSingleton._sodaimp

