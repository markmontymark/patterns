
#//TeaBall.java - the adapter

from TeaBag import TeaBag

class TeaBall(TeaBag):

	looseLeafTea = None

	def initialize(looseLeafTea) :
		self.looseLeafTea = looseLeafTea
		self.teaBagIsSteeped = self.looseLeafTea.teaIsSteeped

	def steepTeaInCup(self) :
		self.looseLeafTea.steepTea()
		self.teaBagIsSteeped = True

