
# PotOfTea - the Real Subject

#from PotOfTeaterface < PotOfTeaInterface

require './src/Structural/Proxy/PotOfTeaInterface.rb'

class PotOfTea < PotOfTeaInterface
	def pourTea 
		'Pouring tea'
	end
end
