
#//PotOfTeaProxy.java - the Proxy

define ['Structural/Proxy/PotOfTeaInterface',
'Structural/Proxy/PotOfTea'
],(
PotOfTeaInterface,
PotOfTea
) ->

	class PotOfTeaProxy extends PotOfTeaInterface
		potOfTea : null
		constructor : ->

		pourTea : ->
			@potOfTea = new PotOfTea()
			@potOfTea.pourTea()

	return PotOfTeaProxy
