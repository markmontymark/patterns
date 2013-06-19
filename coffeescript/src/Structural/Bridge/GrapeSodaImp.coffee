
#//GrapeSodaImp.java - two of three classes extending the Implementation Base Class

define ['Structural/Bridge/SodaImp'
],(
SodaImp
) ->
	class GrapeSodaImp extends SodaImp
		constructor : ->
		pourSodaImp : -> "Delicious Grape Soda!"
	return GrapeSodaImp
