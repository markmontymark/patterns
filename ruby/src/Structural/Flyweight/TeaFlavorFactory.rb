
#//TeaFlavorFactory - the Factory

require "Structural/Flyweight/TeaFlavor"

class TeaFlavorFactory

	def initialize()
		@flavors = []
		@teasMade = 0
	end

	def getTeaFlavor(flavorToGet)
		if @teasMade > 0
			for flavor in @flavors
				if flavorToGet == flavor.getFlavor()
					return flavor 
				end
			end
		end
		retval = TeaFlavor.new(flavorToGet)
		@flavors.append( retval )
		@teasMade += 1
		return retval
	end

	def getTotalTeaFlavorsMade()
 		return @teasMade
	end

end
