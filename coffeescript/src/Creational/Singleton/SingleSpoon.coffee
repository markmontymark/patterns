#

#/// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#/// Original Author: Larry Truett
#/// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#/Java Design Patterns Singleton
#/Singleton Overview
#/A class distributes the only instance of itself.

#/In this example SingleSpoon class holds one instance of SingleSpoon in "private static SingleSpoon theSpoon;". The SingleSpoon class determines the spoons availability using "private static boolean theSpoonIsAvailable = true;" The first time SingleSpoon.getTheSpoon() is called it creates an instance of a SingleSpoon. The SingleSpoon can not be distributed again until it is returned with SingleSpoon.returnTheSpoon().

#/If you were to create a spoon "pool" you would have the same basic logic as shown, however multiple spoons would be distributed. The variable theSpoon would hold an array or collection of spoons. The variable theSpoonIsAvaialable would become a counter of the number of available spoons.


class SingleSpoon

   @theSpoon : null,
   @theSpoonIsAvailable :true
	
  	SingleSpoon : () ->
		if SingleSpoon.theSpoon == null
			SingleSpoon.theSpoon = new SingleSpoon()
		SingleSpoon.theSpoon
		
   @getTheSpoon : () ->
		if SingleSpoon.theSpoonIsAvailable
			SingleSpoon.theSpoonIsAvailable = false
			return SingleSpoon.theSpoon
		#//spoon not available, 
		#//  could throw error or return null (as shown)
		return null

   toString : () ->
		"Behold the glorious single spoon!"
    
   @returnTheSpoon : () ->
       SingleSpoon.theSpoon.cleanSpoon()
       SingleSpoon.theSpoonIsAvailable = true
   
	getSoupLastUsedWith : () ->
		@soupLastUsedWith

   setSoupLastUsedWith : (soup) ->
       @soupLastUsedWith = soup

	cleanSpoon :
		@setSoupLastUsedWith(null)


