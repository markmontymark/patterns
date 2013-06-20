#//DvdNameContext.java - the context

define ['Behavioral/Strategy/DvdNameAllCapStrategy',
'Behavioral/Strategy/DvdNameTheAtEndStrategy',
'Behavioral/Strategy/DvdNameReplaceSpacesStrategy'
],(
DvdNameAllCapStrategy,
DvdNameTheAtEndStrategy,
DvdNameReplaceSpacesStrategy
) ->
	class DvdNameContext
		dvdNameStrategy : null
		constructor : (strategyTypeIn) ->
			switch strategyTypeIn
				when 'C'  then @dvdNameStrategy = new DvdNameAllCapStrategy()
				when 'E' then @dvdNameStrategy = new DvdNameTheAtEndStrategy()
				when 'S' then @dvdNameStrategy = new DvdNameReplaceSpacesStrategy()
				else @dvdNameStrategy = new DvdNameTheAtEndStrategy()


		formatDvdNames : (names, replacementIn = ' ' ) ->
			(for name in names
				"""
Dvd name before formatting: #{name}
Dvd name after formatting:  #{@dvdNameStrategy.formatDvdName(name, replacementIn)}
==========================
				""").join '\n'
