
#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

define ['Behavioral/Mediator/DvdTitle'
],(
DvdTitle
) ->

	class DvdUpcaseTitle extends DvdTitle

		upcaseTitle : null
		dvdMediator : null

		constructor : (title, dvdMediator) ->
			@setTitle( if title instanceof DvdTitle then title.getTitle() else title )
			@resetTitle()
			@dvdMediator = dvdMediator
			@dvdMediator.setUpcase(@)

		resetTitle : (title)->
			if title
				@setTitle title
			@setUpcaseTitle(@getTitle().toUpperCase())

		setSuperTitleUpcase : ->
			@setTitle(@getUpcaseTitle())
			@dvdMediator.changeTitle(@)

		getUpcaseTitle : -> @upcaseTitle
		setUpcaseTitle : (upcaseTitle) -> @upcaseTitle = upcaseTitle
