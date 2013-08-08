
# the Proxy

#from PotOfTeaInterface import PotOfTeaInterface 
#from PotOfTea import PotOfTea

require './src/Structural/Proxy/PotOfTeaInterface.rb'
require './src/Structural/Proxy/PotOfTea.rb'

class PotOfTeaProxy < PotOfTeaInterface

	def initialize
		@potOfTea = PotOfTea.new
	end

	def pourTea
		unless @potOfTea
			@potOfTea = PotOfTea.new
		end
		@potOfTea.pourTea
	end

end

