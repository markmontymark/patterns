
# the Proxy

#from PotOfTeaInterface import PotOfTeaInterface 
#from PotOfTea import PotOfTea

require './src/Structural/Proxy/PotOfTeaInterface.rb'
require './src/Structural/Proxy/PotOfTea.rb'

class PotOfTeaProxy < PotOfTeaInterface

	@potOfTea

	def pourTea
		@potOfTea = PotOfTea.new
		@potOfTea.pourTea
	end

end

