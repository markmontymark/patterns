
#//SuperSizeSoda.java - two of two classes extending the Abstract

define ['Structural/Bridge/Soda'
],(
Soda
) ->
	class SuperSizeSoda extends Soda

		constructor : -> @setSodaImp()

		pourSoda : ->
			sodaImp = @getSodaImp()
			retval = []
			for i in [1..5]
				retval.push '...glug...'
				retval.push sodaImp.pourSodaImp()
				retval.push ' '
			retval.toString()

	return SuperSizeSoda
