
#//SaladSpoon- One of Two Concrete Prototypes extending the AbstractSpoon Prototype
require "Creational/Prototype/AbstractSpoon"

class SaladSpoon < AbstractSpoon
	def initialize()
		setSpoonName('Salad Spoon')
	end

end
