
#//OrangeSodaImp.java - two of three classes extending the Implementation Base Class

define ['Structural/Bridge/SodaImp'
],(
SodaImp
) ->
	class OrangeSodaImp extends SodaImp
		constructor : ->
		pourSodaImp : -> "Citrusy Orange Soda!"
	return OrangeSodaImp
