# SoupBuffet.java - A helper class

define ['Creational/Builder/ChickenSoup',
'Creational/Builder/ClamChowder',
'Creational/Builder/FishChowder',
'Creational/Builder/Minnestrone',
'Creational/Builder/PastaFazul',
'Creational/Builder/TofuSoup',
'Creational/Builder/VegetableSoup'
],(
ChickenSoup,
ClamChowder,
FishChowder,
Minnestrone,
PastaFazul,
TofuSoup,
VegetableSoup
) ->

	class SoupBuffet

		soupBuffetName : null
		chickenSoup : null
		clamChowder : null
		fishChowder : null
		minnestrone : null
		pastaFazul : null
		tofuSoup : null
		vegetableSoup : null

		getSoupBuffetName : -> @soupBuffetName
		setSoupBuffetName : (soupBuffetNameIn) -> @soupBuffetName = soupBuffetNameIn
		setChickenSoup 	: (chickenSoupIn) 	-> @chickenSoup = chickenSoupIn
		setClamChowder 	: (clamChowderIn) 	-> @clamChowder = clamChowderIn
		setFishChowder 	: (fishChowderIn) 	-> @fishChowder = fishChowderIn
		setMinnestrone 	: (minnestroneIn) 	-> @minnestrone = minnestroneIn
		setPastaFazul 		: (pastaFazulIn) 		-> @pastaFazul = pastaFazulIn
		setTofuSoup 		: (tofuSoupIn) 		-> @tofuSoup = tofuSoupIn
		setVegetableSoup : (vegetableSoupIn) 	-> @vegetableSoup = vegetableSoupIn

		getTodaysSoups :  ->
			[
				" Today's Soups!  ",
				" Chicken Soup: ",
				@chickenSoup.soupName,
				" Clam Chowder: ",
				@clamChowder.soupName,
				" Fish Chowder: ",
				@fishChowder.soupName,
				" Minnestrone: ",
				@minnestrone.soupName,
				" Pasta Fazul: ",
				@pastaFazul.soupName,
				" Tofu Soup: ",
				@tofuSoup.soupName,
				" Vegetable Soup: ",
				@vegetableSoup.soupName
			].toString()

	return SoupBuffet
