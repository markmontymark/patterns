# - one of two classes extending the Abstract

require "Soda"

class MediumSoda < Soda

	def initialize() 
		@setSodaImp()

	def pourSoda(self) 		sodaImp = @getSodaImp()
		retval = []
		for i in range(2)			retval.append('...glug...')
			retval.append(sodaImp.pourSodaImp())
		return retval

