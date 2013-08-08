
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
 		return False
	end

	def remove()
 		return False
	end

	def createListIterator()
 		return None
	end

end
