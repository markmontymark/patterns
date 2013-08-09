#//DvdNameContext - the context

require "Behavioral/Strategy/DvdNameAllCapStrategy"
require "Behavioral/Strategy/DvdNameTheAtEndStrategy"
require "Behavioral/Strategy/DvdNameReplaceSpacesStrategy"

class DvdNameContext

	def initialize(strategyTypeIn)
 		@dvdNameStrategy = if strategyTypeIn == 'C'
 			DvdNameAllCapStrategy.new
		elsif strategyTypeIn == 'E'
 			DvdNameTheAtEndStrategy.new
		elsif strategyTypeIn == 'S'
 			DvdNameReplaceSpacesStrategy.new
		else
 			DvdNameTheAtEndStrategy.new
		end
	end

	def formatDvdNames ( names, replacementIn = ' ' )
		[names.map { |name| 
			@dvdNameStrategy.formatDvdName(name, replacementIn) }
		].join(",")
	end
end
