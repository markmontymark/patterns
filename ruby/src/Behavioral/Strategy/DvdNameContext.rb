#//DvdNameContext - the context

from DvdNameAllCapStrategy import DvdNameAllCapStrategy
from DvdNameTheAtEndStrategy import DvdNameTheAtEndStrategy
from DvdNameReplaceSpacesStrategy import DvdNameReplaceSpacesStrategy

class DvdNameContext:

	dvdNameStrategy = None

	def initialize(strategyTypeIn) :
		if strategyTypeIn == 'C' :
			self.dvdNameStrategy = DvdNameAllCapStrategy()

		elif strategyTypeIn == 'E' :
			self.dvdNameStrategy = DvdNameTheAtEndStrategy()

		elif strategyTypeIn == 'S' :
			self.dvdNameStrategy = DvdNameReplaceSpacesStrategy()

		else :
			self.dvdNameStrategy = DvdNameTheAtEndStrategy()

	def formatDvdNames (self, names, replacementIn = ' ' ) :
		list = []
		for name in names:
			list.append("""
Dvd name before formatting: """ + name + """
Dvd name after formatting:  """ + self.dvdNameStrategy.formatDvdName(name, replacementIn) + """
==========================
			""")
		return "\n".join(list)
