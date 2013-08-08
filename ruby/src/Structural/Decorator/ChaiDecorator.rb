#- the decorator

from Tea import Tea

class ChaiDecorator(Tea):

	chaiIngredients = []

	def initialize(teaToMakeChai) :
		self.teaToMakeChai = teaToMakeChai
		self.chaiIngredients = [ 
			'bay leaf', 
			'cinnamon stick', 
			'ginger', 
			'honey', 
			'soy milk', 
			'vanilla bean' ]

	def steepTea(self) :
		return self.steepChai()

	def steepChai(self) :
		self.teaToMakeChai.steepTea()
		return self.steepChaiIngredients() + ', tea is steeping with chai'

	def steepChaiIngredients(self) :
		return ', '.join( [ (i + ' is steeping ') for i in self.chaiIngredients] )

