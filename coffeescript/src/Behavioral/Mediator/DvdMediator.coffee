
#//DvdMediator.java - The Mediator
define ['Behavioral/Mediator/DvdLowercaseTitle',
'Behavioral/Mediator/DvdUpcaseTitle'
],(
DvdLowercaseTitle,
DvdUpcaseTitle
) ->

	class DvdMediator

		dvdUpcaseTitle : null
		dvdLowercaseTitle : null

		setUpcase : (dvdUpcaseTitle) -> @dvdUpcaseTitle = dvdUpcaseTitle

		setLowercase : (dvdLowercaseTitle) -> @dvdLowercaseTitle = dvdLowercaseTitle

		changeTitle : (title) ->
			if title instanceof DvdUpcaseTitle
				@dvdLowercaseTitle.resetTitle(@dvdUpcaseTitle.getTitle())
			else if title instanceof DvdLowercaseTitle
				@dvdUpcaseTitle.resetTitle(@dvdLowercaseTitle.getTitle())
