

#//BostonSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods
define ['Creational/Factory_Method/SoupFactoryMethod',
'Creational/Factory_Method/BostonClamChowder',
'Creational/Factory_Method/BostonFishChowder'
],(
SoupFactoryMethod,
BostonClamChowder,
BostonFishChowder
) ->
  class BostonSoupFactoryMethodSubclass extends SoupFactoryMethod

    makeBuffetName   : -> "Boston Soup Buffet"
    makeClamChowder   : -> new BostonClamChowder()
    makeFishChowder   : -> new BostonFishChowder()

  return BostonSoupFactoryMethodSubclass
