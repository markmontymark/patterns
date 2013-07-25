
define ['Structural/Facade/FacadeTeaCup',
'Structural/Facade/FacadeTeaBag',
'Structural/Facade/FacadeWater'
],(
FacadeTeaCup,
FacadeTeaBag,
FacadeWater
) ->

  class FacadeCuppaMaker

    teaBagIsSteeped : null

    makeACuppa : ->
      cup = new FacadeTeaCup()
      teaBag = new FacadeTeaBag()
      water = new FacadeWater()
      cup.addFacadeTeaBag teaBag
      water.boilFacadeWater()
      cup.addFacadeWater(water)
      cup.steepTeaBag()
      cup

  return FacadeCuppaMaker
