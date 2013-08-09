#require "FacadeTeaCup"
#require "FacadeTeaBag"
#require "FacadeWater"

class FacadeCuppaMaker

	def initialize()
		@teaBagIsSteeped = false
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

