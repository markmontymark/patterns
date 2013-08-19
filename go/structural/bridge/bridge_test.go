//TestBridge - testing the Bridge

package bridge


import (
	"testing"
	"../../lib/asserts"
)

func TestBridge (t *testing.T) {
	thetester := func ( siName string, expectedMedium string, expectedSupersize string ) {
		SodaSizeManagerSet( new(MediumSodaSize) )
		sodaSize := SodaSizeManagerGet()
		asserts.Equals( t, 
			"testing medium soda on the " + siName + " platform",
			expectedMedium,
			sodaSize.PourSoda())	
			
		SodaSizeManagerSet( new(LargeSodaSize) )
		sodaSize = SodaSizeManagerGet()
		asserts.Equals( t, 
			"testing super size soda on the " + siName + " platform",
			expectedSupersize,
			sodaSize.PourSoda() )
	}

	SodaFlavorManagerSet( new(CherrySodaFlavor))
	thetester( "cherry",
	"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!",
	"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!")

	SodaFlavorManagerSet( new(GrapeSodaFlavor))
	thetester( "grape",
	"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!",
	"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!")

	SodaFlavorManagerSet( new(OrangeSodaFlavor))
	thetester( "orange",
	"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!",
	"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!")

}      
