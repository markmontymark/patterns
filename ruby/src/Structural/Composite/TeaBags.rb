class TeaBags

	def initialize()
 		raise Exception("Can't instantiate abstract class, TeaBags")
	end

	def countTeaBags ()
 		raise Exception("Unimplemented method TeaBags.countTeaBags")
	end

	def add ()
 		raise Exception("Unimplemented method TeaBags.add")
	end

	def remove ()
 		raise Exception("Unimplemented method TeaBags.remove")
	end

	def createListIterator ()
 		raise Exception("Unimplemented method TeaBags.createListIterator")
	end

	def setName(nameIn)
 		@name = nameIn
	end

	def getName()
 		return @name
	end

	def setParent(parentIn)
 		@parent = parentIn
	end

	def getParent()
 		return @parent
	end

end
