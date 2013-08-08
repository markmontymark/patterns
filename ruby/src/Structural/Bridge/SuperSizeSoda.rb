
# two of two classes extending the Abstract

require "Soda"

class SuperSizeSoda < Soda

	def initialize() 
		@setSodaImp()

	def pourSoda(self) 		sodaImp = @getSodaImp()
		retval = []
		for i in range(5)			retval.append('...glug...')
			retval.append(sodaImp.pourSodaImp())
		return retval
