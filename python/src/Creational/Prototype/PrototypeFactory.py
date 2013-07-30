
#//Prototype Overview
#//Make new objects by cloning the objects which you set as prototypes
#//Still reading? Save your time, watch the video lessons!
#//Video tutorial on design patterns

# PrototypeFactory - a Factory for Prototypes

class PrototypeFactory:

	def __init__(self,prototypeSpoon,prototypeFork):
		self.prototypeSpoon = prototypeSpoon
		self.prototypeFork = prototypeFork
	
	def makeSpoon(self) : 
		return self.prototypeSpoon.clone()

	def makeFork(self) : 
		return self.prototypeFork.clone()
