# - one of two classes extending the Abstract

from Soda import Soda

class MediumSoda(Soda):

	def __init__(self): 
		self.setSodaImp()

	def pourSoda(self) :
		sodaImp = self.getSodaImp()
		retval = []
		for i in range(2):
			retval.append('...glug...')
			retval.append(sodaImp.pourSodaImp())
		return retval

