#//DvdNameContext - the context

require "DvdNameAllCapStrategy"
require "DvdNameTheAtEndStrategy"
require "DvdNameReplaceSpacesStrategy"

class DvdNameContext

	dvdNameStrategy = None

	def initialize(strategyTypeIn) 		if strategyTypeIn == 'C' 			@dvdNameStrategy = DvdNameAllCapStrategy()

		elif strategyTypeIn == 'E' 			@dvdNameStrategy = DvdNameTheAtEndStrategy()

		elif strategyTypeIn == 'S' 			@dvdNameStrategy = DvdNameReplaceSpacesStrategy()

		else 			@dvdNameStrategy = DvdNameTheAtEndStrategy()

	def formatDvdNames ( names, replacementIn = ' ' ) 		list = []
		for name in names			list.append("""
Dvd name before formatting: """ + name + """
Dvd name after formatting:  """ + @dvdNameStrategy.formatDvdName(name, replacementIn) + """
==========================
			""")
		return "\n".join(list)
