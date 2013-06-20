#//DvdRelease.java - a helper class
define [],() ->
	class DvdRelease

		constructor :(@serialNumber, @dvdName, @dvdReleaseYear, @dvdReleaseMonth, @dvdReleaseDay) ->

		updateDvdRelease : (serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) ->
			@serialNumber = serialNumber
			@dvdName = dvdName
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay


		updateDvdReleaseDate : (dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) ->
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay

