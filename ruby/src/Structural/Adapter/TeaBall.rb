
#//TeaBall.java - the adapter

require "TeaBag"

class TeaBall < TeaBag

	looseLeafTea = None

	def initialize(looseLeafTea) 		@looseLeafTea = looseLeafTea
		@teaBagIsSteeped = @looseLeafTea.teaIsSteeped

	def steepTeaInCup(self) 		@looseLeafTea.steepTea()
		@teaBagIsSteeped = True

