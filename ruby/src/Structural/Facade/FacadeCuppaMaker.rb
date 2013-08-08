require "Structural/Facade/FacadeTeaCup"
require "Structural/Facade/FacadeTeaBag"
require "Structural/Facade/FacadeWater"

class FacadeCuppaMaker

	def initialize()
		@teaBagIsSteeped = False
	end

	def makeACuppa() 		
		cup = FacadeTeaCup.new()
		teaBag = FacadeTeaBag.new()
		water = FacadeWater.new()
		cup.addFacadeTeaBag(teaBag)
		water.boilFacadeWater()
		cup.addFacadeWater(water)
		cup.steepTeaBag()
		return cup
	end

end

