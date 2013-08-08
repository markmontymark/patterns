#//DvdStateNameExclaim - one of two Concrete States

require "Behavioral/State/DvdStateName"
require "Behavioral/State/DvdStateNameStars"

class DvdStateNameExclaim < DvdStateName
	def showName ( ctx, name)
		retval = name.replace(' ','!',1)
		ctx.setDvdStateName(DvdStateNameStars.new)
		return retval
	end
end
