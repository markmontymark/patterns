
#  BostonConcreteSoupFactory  One of Two concrete factories extending the abstract factory

require "Creational/Abstract_Factory/AbstractSoupFactory"
require "common/BostonClamChowder"
require "common/BostonFishChowder"

class BostonConcreteSoupFactory < AbstractSoupFactory
	def initialize()
		@factoryLocation = "Boston"
	end

	def makeClamChowder()
 		return BostonClamChowder.new
	end

	def makeFishChowder()
 		return BostonFishChowder.new
	end

end
