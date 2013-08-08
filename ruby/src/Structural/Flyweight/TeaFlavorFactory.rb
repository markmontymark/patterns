
#//TeaFlavorFactory.java - the Factory

from TeaFlavor import TeaFlavor

class TeaFlavorFactory :

	flavors = []
	teasMade = 0

	def getTeaFlavor(self,flavorToGet) :
			if self.teasMade > 0 :
				for flavor in self.flavors :
					if flavorToGet == flavor.getFlavor() :
						return flavor 
			retval = TeaFlavor(flavorToGet)
			self.flavors.append( retval )
			self.teasMade += 1
			return retval

	def getTotalTeaFlavorsMade(self) : 
		return self.teasMade
