
# - the decoratee

require "Structural/Decorator/Tea"

class TeaLeaves < Tea

	def initialize()
		@teaIsSteeped = False
	end

	def steepTea()
 		@teaIsSteeped = True
		return "tea leaves are steeping"
	end

end

