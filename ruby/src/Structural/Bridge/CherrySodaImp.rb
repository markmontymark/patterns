
# - two of three classes extending the Implementation Base Class

require "Structural/Bridge/SodaImp"

class CherrySodaImp < SodaImp
	def pourSodaImp()
 		return "Yummy Cherry Soda!"
	end
end
