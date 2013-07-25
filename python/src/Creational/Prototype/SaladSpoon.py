
#//SaladSpoon.java - One of Two Concrete Prototypes extending the AbstractSpoon Prototype
define ['Creational/Prototype/AbstractSpoon'
],(
AbstractSpoon
) ->

	class SaladSpoon extends AbstractSpoon

		constructor : ->
			@setSpoonName 'Salad Spoon'

	return SaladSpoon
