
#//SodaImpSingleton - a Singleton to hold the current SodaImp

class SodaImpSingleton

	@@instance = SodaImpSingleton.new


	def initialize(sodaimp)
		@sodaimp = sodaimp
	end

	def self.instance
		return @@instance
	end

	def getTheSodaImp()
 		return @sodaimp
	end

	def setTheSodaImp(si)
 		@sodaimp = si
	end

	private_class_method :new
end


