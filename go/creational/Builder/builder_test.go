package builder



import (
	"testing"
	"../../lib/asserts"
)

func TestBuilder (t *testing.T) {

   createSoupBuffet := func( soupBuffetBuilder SoupBuffetBuilder) SoupBuffet { 
        soupBuffetBuilder.BuildSoupBuffet()
        
        soupBuffetBuilder.SetSoupBuffetName()
        
        soupBuffetBuilder.BuildChickenSoup()
        soupBuffetBuilder.BuildClamChowder()
        soupBuffetBuilder.BuildFishChowder()    
        soupBuffetBuilder.BuildMinnestrone()
        soupBuffetBuilder.BuildPastaFazul()
        soupBuffetBuilder.BuildTofuSoup()
        soupBuffetBuilder.BuildVegetableSoup()
        
        return soupBuffetBuilder.GetSoupBuffet()
   }     
   
   bostonSoupBuffet := createSoupBuffet( NewBostonSoupBuffetBuilder())
       asserts.Equals( t, "Boston soup buffet builder test",
			"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			"At the " + bostonSoupBuffet.GetSoupBuffetName() + bostonSoupBuffet.GetTodaysSoups())

   honoluluSoupBuffet = createSoupBuffet( NewHonoluluSoupBuffetBuilder())
       asserts.Equals( t, "Honolulu soup buffet builder test",
			"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup",
			"At the " + honoluluSoupBuffet.GetSoupBuffetName() + honoluluSoupBuffet.GetTodaysSoups())
}      
