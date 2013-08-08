require "FacadeTeaCup"
require "FacadeTeaBag"
require "FacadeWater"

class FacadeCuppaMaker

	teaBagIsSteeped  = None

	def makeACuppa(self) 		cup = FacadeTeaCup()
		teaBag = FacadeTeaBag()
		water = FacadeWater()
		cup.addFacadeTeaBag(teaBag)
		water.boilFacadeWater()
		cup.addFacadeWater(water)
		cup.steepTeaBag()
		return cup

