
# - the decoratee

require "Tea"

class TeaLeaves < Tea

	def initialize()
		@teaIsSteeped = False

	def steepTea(self) 		@teaIsSteeped = True
		return "tea leaves are steeping"

