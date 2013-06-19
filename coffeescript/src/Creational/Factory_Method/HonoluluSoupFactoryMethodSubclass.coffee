

#//HonoluluSoupFactoryMethodSubclass.java - Two of Two Subclass Factory Methods
define ['Creational/Factory_Method/SoupFactoryMethod',
'Creational/Factory_Method/HonoluluClamChowder',
'Creational/Factory_Method/HonoluluFishChowder'
],(
SoupFactoryMethod,
HonoluluClamChowder,
HonoluluFishChowder
) ->
  class HonoluluSoupFactoryMethodSubclass extends SoupFactoryMethod

    makeBuffetName   : -> "Honolulu Soup Buffet"
    makeClamChowder   : -> new HonoluluClamChowder()
    makeFishChowder   : -> new HonoluluFishChowder()

  return HonoluluSoupFactoryMethodSubclass
