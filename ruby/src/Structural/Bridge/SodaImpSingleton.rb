
#//SodaImpSingleton - a Singleton to hold the current SodaImp

class SodaImpSingleton

	def initialize(sodaimp)
		self._sodaimp = sodaimp
	end

	def getTheSodaImp()
 		return SodaImpSingleton._sodaimp
	end

end


