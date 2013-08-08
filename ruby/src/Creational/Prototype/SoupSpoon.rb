
#//SoupSpoon - One of Two Concrete Prototypes extending the AbstractSpoon Prototype
require "Creational/Prototype/AbstractSpoon"

class SoupSpoon < AbstractSpoon
	def initialize()
		setSpoonName('Soup Spoon')
	end
end
