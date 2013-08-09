
# - one of two classes extending the Abstract

require "Structural/Bridge/Soda"

class SuperSizeSoda < Soda

	def initialize() 
		setSodaImp()
	end

	def pourSoda()
 		sodaImp = getSodaImp()
		retval = []
		( 1..5 ).each do
			retval.push('...glug...')
			retval.push(sodaImp.pourSodaImp())
		end
		retval.join(' ')
	end

end

