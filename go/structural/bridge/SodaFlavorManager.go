package bridge


//SodaImpSingleton - a Singleton to hold the current SodaImp

var flavor SodaFlavor

func SodaFlavorManagerSet (sf SodaFlavor) {
	flavor = sf
}
func SodaFlavorManagerGet () SodaFlavor {
	return flavor
}

