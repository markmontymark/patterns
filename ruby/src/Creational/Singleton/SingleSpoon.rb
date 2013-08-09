#

#/// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#/// Original Author: Larry truett
#/// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#/Java Design Patterns Singleton
#/Singleton Overview
#/A class distributes the only instance of it@

#/In this example SingleSpoon class holds one instance of SingleSpoon in "private static SingleSpoon theSpoon;". The SingleSpoon class determines the spoons availability using "private static boolean theSpoonIsAvailable = true;" The first time SingleSpoon.getTheSpoon() == called it creates an instance of a SingleSpoon. The SingleSpoon can not be distributed again until it == returned with SingleSpoon.returnTheSpoon().

#/If you were to create a spoon "pool" you would have the same basic logic as shown, however multiple spoons would be distributed. The variable theSpoon would hold an array or collection of spoons. The variable theSpoonIsAvaialable would become a counter of the number of available spoons.

class SingleSpoon

	@@instance = SingleSpoon.new

	def initialize(sodaimp)
		@soupLastUsedWith = nil
		@theSpoonIsAvailable = true
		@sodaimp = sodaimp
	end

	def self.instance
		return @@instance
	end

	def to_s()
 		return "Behold the glorious single spoon!"
	end

	def returnTheSpoon()
 		cleanSpoon()
		@theSpoonIsAvailable = true
	end

	def getTheSpoon() 		#//if spoon not available  return nil
		if @theSpoonIsAvailable
			@theSpoonIsAvailable = false
			return self.instance
		end
		return nil
	end

	def useSpoon
		if @theSpoonIsAvailable
			@theSpoonIsAvailable = false
			return;
		end
		"Spoon in use"
	end


	def getSoupLastUsedWith()
 		return @soupLastUsedWith
	end

	def setSoupLastUsedWith(soup)
 		@soupLastUsedWith = soup
	end

	def cleanSpoon()
 		setSoupLastUsedWith(nil)
	end

	private_class_method :new
end


