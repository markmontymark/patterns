# //DvdNameTheAtEndStrategy.java - two of three concrete strategies


define ['Behavioral/Strategy/DvdNameStrategy'
], (
DvdNameStrategy
) ->
	class DvdNameTheAtEndStrategy extends DvdNameStrategy
		formatDvdName : (dvdName,charIn) ->
			switch
				when dvdName.match(/^The /) then dvdName.substring(4, dvdName.length) + ", The"
				when dvdName.match(/^THE /) then dvdName.substring(4, dvdName.length) + ", THE"
				when dvdName.match(/^the /) then dvdName.substring(4, dvdName.length) + ", the"
				else dvdName
