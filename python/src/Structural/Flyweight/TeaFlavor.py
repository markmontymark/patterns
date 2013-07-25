
#//TeaFlavor.java - the Concrete Flyweight

define ['Structural/Flyweight/TeaOrder'
],(
TeaOrder
) ->
	class TeaFlavor extends TeaOrder
		constructor :(@teaFlavor)  ->
		getFlavor : -> @teaFlavor
		serveTea : (teaOrderContext) ->
			"Serving tea flavor #{@teaFlavor} to table number #{teaOrderContext.getTable()}"
	return TeaFlavor
