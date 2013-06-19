
#//PotOfTea.java - the Real Subject

define ['Structural/Proxy/PotOfTeaInterface'
],(
PotOfTeaInterface
) ->
  class PotOfTea extends PotOfTeaInterface
    pourTea : -> 'Pouring tea'
  return PotOfTea
