#- the decorator

require "Structural/Decorator/Tea"

class ChaiDecorator < Tea

	def initialize(teaToMakeChai)
 		@teaToMakeChai = teaToMakeChai
		@chaiIngredients = [ 
			'bay leaf', 
			'cinnamon stick', 
			'ginger', 
			'honey', 
			'soy milk', 
			'vanilla bean' ]
	end

	def steepTea()
 		return steepChai()
	end

	def steepChai()
 		@teaToMakeChai.steepTea()
		return steepChaiIngredients() + ', tea is steeping with chai'
	end

	def steepChaiIngredients()
		return (@chaiIngredients.map { |i| (i + ' is steeping ') }).join(', ')
	end

end

