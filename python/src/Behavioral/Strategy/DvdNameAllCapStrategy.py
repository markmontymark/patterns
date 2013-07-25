
## DvdNameAllCapStrategy - one of three concrete strategies

from DvdNameStrategy import DvdNameStrategy

class DvdNameAllCapStrategy(DvdNameStrategy):
	def __init__(self):
		"""empty init"""
	
	def formatDvdName(self, dvdName, charIn):
		return dvdName.upper()
