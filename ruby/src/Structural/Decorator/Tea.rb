class Tea

	def initialize()
		 @teaIsSteeped = false
	end

	def getTeaIsSteeped
		@teaIsSteeped
	end

	def steepTea()
       raise Exception("Unimplemented method, Tea.steepTea")
	end
end
