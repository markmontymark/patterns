# SoupBuffet- A helper class

require "common/ChickenSoup"
require "common/ClamChowder"
require "common/FishChowder"
require "common/Minnestrone"
require "common/PastaFazul"
require "common/TofuSoup"
require "common/VegetableSoup"

class SoupBuffet

	
	attr_reader :soupBuffetName, :chickenSoup, :clamChowder, :fishChowder, :minnestrone, :pastaFazul, :tofuSoup, :vegetableSoup
	attr_writer :soupBuffetName, :chickenSoup, :clamChowder, :fishChowder, :minnestrone, :pastaFazul, :tofuSoup, :vegetableSoup

	def initialize()
		@soupBuffetName = nil
		@chickenSoup = nil
		@clamChowder = nil
		@fishChowder = nil
		@minnestrone = nil
		@pastaFazul = nil
		@tofuSoup = nil
		@vegetableSoup = nil
	end

	def setSoupBuffetName(soupBuffetNameIn)
		@soupBuffetName = soupBuffetNameIn
	end

	def setChickenSoup(chickenSoupIn) 
		@chickenSoup = chickenSoupIn
	end

	def setClamChowder(clamChowderIn)
		@clamChowder = clamChowderIn
	end

	def setFishChowder(fishChowderIn) 
		@fishChowder = fishChowderIn
	end

	def setMinnestrone(minnestroneIn)
		@minnestrone = minnestroneIn
	end

	def setPastaFazul(pastaFazulIn)
		@pastaFazul = pastaFazulIn
	end

	def setTofuSoup(tofuSoupIn)
		@tofuSoup = tofuSoupIn
	end

	def setVegetableSoup(vegetableSoupIn) 		
		@vegetableSoup = vegetableSoupIn
	end

	def getSoupBuffetName() 		
		@soupBuffetName
	end

	def getTodaysSoups() 		
		[
			" Today's Soups!  Chicken Soup: #{@chickenSoup.soupName}",
			"Clam Chowder: #{ @clamChowder.soupName }",
			"Fish Chowder: #{ @fishChowder.soupName }",
			"Minnestrone: #{ @minnestrone.soupName }",
			"Pasta Fazul: #{ @pastaFazul.soupName }",
			"Tofu Soup: #{ @tofuSoup.soupName }",
			"Vegetable Soup: #{ @vegetableSoup.soupName }",
		].join(', ')
	end
end
