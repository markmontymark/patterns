#//DvdStateNameExclaim - one of two Concrete States

require "Behavioral/State/DvdStateName"
require "Behavioral/State/DvdStateNameStars"

class DvdStateNameExclaim < DvdStateName
	def showName ( ctx, name)
		retval = name.sub(' ','!')
		ctx.setDvdStateName(DvdStateNameStars.new)
		retval
	end
end
