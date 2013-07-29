from FacadeTeaCup import FacadeTeaCup
from FacadeTeaBag import FacadeTeaBag
from FacadeWater import FacadeWater

class FacadeCuppaMaker:

	teaBagIsSteeped  = None

	def makeACuppa(self) :
		cup = FacadeTeaCup()
		teaBag = FacadeTeaBag()
		water = FacadeWater()
		cup.addFacadeTeaBag(teaBag)
		water.boilFacadeWater()
		cup.addFacadeWater(water)
		cup.steepTeaBag()
		return cup

