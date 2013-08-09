
class TeaBag

	def initialize()
		@teaBagIsSteeped = false
	end

	def steepTeaInCup()
 		@teaBagIsSteeped = true
		return 'tea bag is steeping in cup'
	end

	def getTeaBagIsSteeped
		@teaBagIsSteeped
	end
end

