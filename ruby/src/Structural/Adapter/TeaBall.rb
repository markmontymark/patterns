
#//TeaBall - the adapter

require "Structural/Adapter/TeaBag"

class TeaBall < TeaBag

	def initialize(looseLeafTea)
 		@looseLeafTea = looseLeafTea
		@teaBagIsSteeped = @looseLeafTea.getTeaIsSteeped
	end

	def steepTeaInCup()
 		@looseLeafTea.steepTea()
		@teaBagIsSteeped = true
	end

end

