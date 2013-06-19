#//MediumSoda.java - one of two classes extending the Abstract

define ['Structural/Bridge/Soda'
],(
Soda
) ->
  class MediumSoda extends Soda

    constructor : ->
      @setSodaImp()

    pourSoda : ->
      sodaImp = @getSodaImp()
      retval = []
      for i in [1..2]
        retval.push '...glug...'
        retval.push sodaImp.pourSodaImp()
      retval.toString()

  return MediumSoda
