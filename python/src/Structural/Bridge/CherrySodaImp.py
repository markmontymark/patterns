
#//CherrySodaImp.java - two of three classes extending the Implementation Base Class

define ['Structural/Bridge/SodaImp'
],(
SodaImp
) ->
	class CherrySodaImp extends SodaImp
		constructor : ->
		pourSodaImp : -> "Yummy Cherry Soda!"
	return CherrySodaImp
