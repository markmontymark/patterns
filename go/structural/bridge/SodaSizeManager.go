package bridge

var size SodaSize

func SodaSizeManagerSet (sf SodaSize) {
	size = sf
}
func SodaSizeManagerGet () SodaSize {
	return size
}

