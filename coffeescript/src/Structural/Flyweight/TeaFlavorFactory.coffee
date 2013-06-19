
#//TeaFlavorFactory.java - the Factory

define ['Structural/Flyweight/TeaFlavor'
],(
TeaFlavor
) ->
	class TeaFlavorFactory

		flavors : []
		teasMade : 0

		getTeaFlavor : (flavorToGet) ->
			if @teasMade > 0
				for flavor in @flavors
					return flavor if flavorToGet is flavor.getFlavor()
			@flavors[@teasMade] = new TeaFlavor(flavorToGet)
			@flavors[@teasMade++]

		getTotalTeaFlavorsMade : -> @teasMade

	return TeaFlavorFactory
