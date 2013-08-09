
# - one composite extension - the "leaf"

require "Structural/Composite/TeaBags"

class OneTeaBag < TeaBags
	def initialize(name)
		@name = name
	end

	def countTeaBags()
 		return 1
	end

	def add()
 		return false
	end

	def remove()
 		return false
	end

	def createListIterator()
 		return nil
	end

end
