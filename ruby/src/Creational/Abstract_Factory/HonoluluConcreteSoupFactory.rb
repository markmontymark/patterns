
#//HonoluluConcreteSoupFactory - Two of Two concrete factories extending the abstract factory

require "Creational/Abstract_Factory/AbstractSoupFactory"
require "common/HonoluluClamChowder"
require "common/HonoluluFishChowder"

class HonoluluConcreteSoupFactory < AbstractSoupFactory
	def initialize()
		@factoryLocation = "Honolulu"
	end

	def makeClamChowder()
 		return HonoluluClamChowder.new
	end

	def makeFishChowder()
 		return HonoluluFishChowder.new
	end

end
