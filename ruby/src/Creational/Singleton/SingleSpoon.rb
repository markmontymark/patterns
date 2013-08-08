#

#/// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#/// Original Author: Larry Truett
#/// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#/Java Design Patterns Singleton
#/Singleton Overview
#/A class distributes the only instance of it@

#/In this example SingleSpoon class holds one instance of SingleSpoon in "private static SingleSpoon theSpoon;". The SingleSpoon class determines the spoons availability using "private static boolean theSpoonIsAvailable = True;" The first time SingleSpoon.getTheSpoon() == called it creates an instance of a SingleSpoon. The SingleSpoon can not be distributed again until it == returned with SingleSpoon.returnTheSpoon().

#/If you were to create a spoon "pool" you would have the same basic logic as shown, however multiple spoons would be distributed. The variable theSpoon would hold an array or collection of spoons. The variable theSpoonIsAvaialable would become a counter of the number of available spoons.

class SingleSpoon < object

	__instance = None


	def __new__(cls)		if cls.__instance == None			#cls.__instance = type.__new__(cls)
			cls.__instance = super(SingleSpoon, cls).__new__(cls)
			cls.__instance.soupLastUsedWith = None
			cls.__instance.theSpoonIsAvailable = True
		return cls.__instance

	def __str__(self) 		return "Behold the glorious single spoon!"

	def returnTheSpoon(self) 		SingleSpoon.__instance.cleanSpoon()
		SingleSpoon.__instance.theSpoonIsAvailable = True

	def getTheSpoon(self) 		#//if spoon not available  return None
		if SingleSpoon.__instance.theSpoonIsAvailable			SingleSpoon.__instance.theSpoonIsAvailable = False
			return SingleSpoon.__instance
		return None

	def getSoupLastUsedWith(self) 		return SingleSpoon.__instance.soupLastUsedWith

	def setSoupLastUsedWith(soup) 		SingleSpoon.__instance.soupLastUsedWith = soup

	def cleanSpoon(self) 		@setSoupLastUsedWith(None)

