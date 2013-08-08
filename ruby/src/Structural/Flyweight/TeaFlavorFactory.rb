
#//TeaFlavorFactory.java - the Factory

require "TeaFlavor"

class TeaFlavorFactory

	flavors = []
	teasMade = 0

	def getTeaFlavor(flavorToGet) 			if @teasMade > 0 				for flavor in @flavors 					if flavorToGet == flavor.getFlavor() 						return flavor 
			retval = TeaFlavor(flavorToGet)
			@flavors.append( retval )
			@teasMade += 1
			return retval

	def getTotalTeaFlavorsMade(self) 		return @teasMade
