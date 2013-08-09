
# - the decoratee

require "Structural/Decorator/Tea"

class TeaLeaves < Tea

	def initialize()
		@teaIsSteeped = false
	end

	def steepTea()
 		@teaIsSteeped = true
		return "tea leaves are steeping"
	end

end

