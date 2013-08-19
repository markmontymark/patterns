package bridge


type LargeSodaSize struct {} // implements SodaSize
   
func (this *LargeSodaSize) PourSoda() string {
	flavor := SodaFlavorManagerGet()
	retval := ""
	for i := 0; i < 5; i++ {
		retval += "...glug..."
		retval += flavor.PourSoda()
	}
	return retval
}
