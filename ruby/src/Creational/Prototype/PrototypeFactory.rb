
#//Prototype Overview
#//Make new objects by cloning the objects which you set as prototypes
#//Still reading? Save your time, watch the video lessons!
#//Video tutorial on design patterns

# PrototypeFactory - a Factory for Prototypes

class PrototypeFactory

	def initialize(prototypeSpoon,prototypeFork)		
		@prototypeSpoon = prototypeSpoon
		@prototypeFork = prototypeFork
	end
	
	def makeSpoon()
 		@prototypeSpoon.clone
	end

	def makeFork()
 		@prototypeFork.clone
	end

end
