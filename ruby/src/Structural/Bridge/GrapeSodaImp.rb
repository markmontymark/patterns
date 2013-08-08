
# one of three classes extending the Implementation Base Class

require "Structural/Bridge/SodaImp"

class GrapeSodaImp < SodaImp
	def pourSodaImp()
 		return "Delicious Grape Soda!"
	end
end
