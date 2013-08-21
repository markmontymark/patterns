//TestSoupFactoryMethod - testing the factory method

package factorymethod

import (
	"testing"
	"../../lib/asserts"
)

func TestFactoryMethod (t *testing.T) {         

	thetester := func( sfm SoupFactoryMethod , msg string ,expected string) {

       soupBuffet := sfm.MakeSoupBuffet()
       soupBuffet.SetSoupBuffetName( sfm.MakeBuffetName())
       soupBuffet.SetChickenSoup( sfm.MakeChickenSoup())
       soupBuffet.SetClamChowder( sfm.MakeClamChowder()) 
       soupBuffet.SetFishChowder( sfm.MakeFishChowder())
       soupBuffet.SetMinnestrone( sfm.MakeMinnestrone())
       soupBuffet.SetPastaFazul( sfm.MakePastaFazul()) 
       soupBuffet.SetTofuSoup( sfm.MakeTofuSoup())
       soupBuffet.SetVegetableSoup( sfm.MakeVegetableSoup()) 
       asserts.Equals( t, msg,
			expected,
			 "At the  " + soupBuffet.GetSoupBuffetName() + soupBuffet.GetTodaysSoups())
	}
       

	thetester( NewBostonSoupFactoryMethodSubclass(), "Boston Soup Factory Method",
			"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup")
       
	thetester( NewHonoluluSoupFactoryMethodSubclass(), "Honolulu Soup Factory Method",
			"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup")
}      
