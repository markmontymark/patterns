#- the decorator

require "Tea"

class ChaiDecorator < Tea

	chaiIngredients = []

	def initialize(teaToMakeChai) 		@teaToMakeChai = teaToMakeChai
		@chaiIngredients = [ 
			'bay leaf', 
			'cinnamon stick', 
			'ginger', 
			'honey', 
			'soy milk', 
			'vanilla bean' ]

	def steepTea(self) 		return @steepChai()

	def steepChai(self) 		@teaToMakeChai.steepTea()
		return @steepChaiIngredients() + ', tea is steeping with chai'

	def steepChaiIngredients(self) 		return ', '.join( [ (i + ' is steeping ') for i in @chaiIngredients] )

