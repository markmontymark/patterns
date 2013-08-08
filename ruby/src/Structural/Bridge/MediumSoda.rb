# - one of two classes extending the Abstract

require "Structural/Bridge/Soda"

class MediumSoda < Soda

	def initialize() 
		setSodaImp()
	end

	def pourSoda()
 		sodaImp = getSodaImp()
		retval = []
		( 1..2 ).each do
			retval.append('...glug...')
			retval.append(sodaImp.pourSodaImp())
		end
		return retval
	end

end

