
#//SaladForki One of Two Concrete Prototypes extending the AbstractFork Prototype
require "Creational/Prototype/AbstractFork"

class SaladFork < AbstractFork
	def initialize()
		setForkName('Salad Fork')
	end
end

