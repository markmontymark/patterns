
# - the adaptee


class LooseLeafTea

	def initialize()
		@teaIsSteeped = false
	end

	def steepTea()
 		@teaIsSteeped = true
		return 'tea is steeping'
	end

	def getTeaIsSteeped
		@teaIsSteeped
	end

end

