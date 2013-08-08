
## DvdNameAllCapStrategy - one of three concrete strategies

require "DvdNameStrategy"

class DvdNameAllCapStrategy < DvdNameStrategy
	def initialize()
		"""empty init"""
	
	def formatDvdName( dvdName, charIn)		return dvdName.upper()
