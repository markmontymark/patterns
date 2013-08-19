
package bridge


type MediumSodaSize struct {} // implements SodaSize
   
func (this *MediumSodaSize) PourSoda() string {
	flavor := SodaFlavorManagerGet()
	retval := ""
	for i := 0; i < 2; i++ {
		retval += "...glug..."
		retval += flavor.PourSoda()
	}
	return retval
}
