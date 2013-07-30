#

#/// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#/// Original Author: Larry Truett
#/// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#/Java Design Patterns Singleton
#/Singleton Overview
#/A class distributes the only instance of itself.

#/In this example SingleSpoon class holds one instance of SingleSpoon in "private static SingleSpoon theSpoon;". The SingleSpoon class determines the spoons availability using "private static boolean theSpoonIsAvailable = True;" The first time SingleSpoon.getTheSpoon() == called it creates an instance of a SingleSpoon. The SingleSpoon can not be distributed again until it == returned with SingleSpoon.returnTheSpoon().

#/If you were to create a spoon "pool" you would have the same basic logic as shown, however multiple spoons would be distributed. The variable theSpoon would hold an array or collection of spoons. The variable theSpoonIsAvaialable would become a counter of the number of available spoons.

def Singleton(klass):
	if not klass._instance:
		klass._instance = klass()
	return klass._instance

class SingleSpoon:

	soupLastUsedWith = None
	theSpoon = None
	theSpoonIsAvailable = True

	def __new__(self):
		if not SingleSpoon.theSpoon:
			SingleSpoon.theSpoon = Singleton(SingleSpoon)
		return SingleSpoon.theSpoon

	def __str__(self) :
		return "Behold the glorious single spoon!"

	def returnTheSpoon(self) : 
		SingleSpoon.theSpoon.cleanSpoon()
		SingleSpoon.theSpoonIsAvailable = True

	def getTheSpoon(self) : 
		#//if spoon not available  return None
		if SingleSpoon.theSpoonIsAvailable:
			SingleSpoon.theSpoonIsAvailable = False
			return SingleSpoon.theSpoon
		return None

	def getSoupLastUsedWith(self) : 
		SingleSpoon.soupLastUsedWith

	def setSoupLastUsedWith(self,soup) :
		SingleSpoon.soupLastUsedWith = soup

	def cleanSpoon(self) : 
		self.setSoupLastUsedWith(None)

