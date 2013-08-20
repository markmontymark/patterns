//TestAbstractSoupFactory - Testing the abstract factory

package abstractfactory

import (
	"fmt"
	"testing"
	"time"
	"../../lib/asserts"
	"../common"
)

func TestAbstractFactory (t *testing.T) { 
	
   makeSoupOfTheDay := func (concreteSoupFactory AbstractSoupFactory) common.Soup { 
		dayOfWeek := time.Tuesday //Calendar.TUESDAY
      
		switch( dayOfWeek ) {
			case time.Monday:
				return concreteSoupFactory.MakeChickenSoup()
			case time.Tuesday:
				return concreteSoupFactory.MakeClamChowder()
			case time.Wednesday :
				return concreteSoupFactory.MakeFishChowder()
			case time.Thursday :
				return concreteSoupFactory.MakeMinnestrone()
			case time.Friday :
				return concreteSoupFactory.MakePastaFazul()
			case time.Saturday :
				return concreteSoupFactory.MakeTofuSoup()
			case time.Sunday :
			default:
				return concreteSoupFactory.MakeVegetableSoup()
       }
		return concreteSoupFactory.MakeVegetableSoup()
   }        

	boston := NewBostonConcreteSoupFactory()
	soupOfTheDay := makeSoupOfTheDay(boston)
	
	asserts.Equals( t, "Boston Abstract Factory test",
		"The Soup of the day Boston is QuahogChowder",
		"The Soup of the day " + boston.GetFactoryLocation() + " is " + soupOfTheDay.GetSoupName())

	hono := NewHonoluluConcreteSoupFactory()
	soupOfTheDay = makeSoupOfTheDay(hono)
	asserts.Equals( t, "Honolulu Abstract Factory test",
		"The Soup of the day Honolulu is PacificClamChowder",
		"The Soup of the day " + hono.GetFactoryLocation() + " is " + soupOfTheDay.GetSoupName())
} 
