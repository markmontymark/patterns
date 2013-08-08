
#//TeaBall - the adapter

require "Structural/Adapter/TeaBag"

class TeaBall < TeaBag

	def initialize(looseLeafTea)
 		@looseLeafTea = looseLeafTea
		@teaBagIsSteeped = @looseLeafTea.teaIsSteeped
	end

	def steepTeaInCup()
 		@looseLeafTea.steepTea()
		@teaBagIsSteeped = True
	end

end

