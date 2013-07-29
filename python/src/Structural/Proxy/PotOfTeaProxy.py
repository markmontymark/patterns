
# the Proxy

from PotOfTeaInterface import PotOfTeaInterface 
from PotOfTea import PotOfTea

class PotOfTeaProxy(PotOfTeaInterface):

	potOfTea = None

	def pourTea(self) :
		self.potOfTea = PotOfTea()
		return self.potOfTea.pourTea()

