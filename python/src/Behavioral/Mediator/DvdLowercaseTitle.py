

#//DvdLowercaseTitle- One of Two Concrete Colleagues or Mediatees

define ['Behavioral/Mediator/DvdTitle'
],(
DvdTitle
) ->

	class DvdLowercaseTitle extends DvdTitle
		LowercaseTitle : null
		dvdMediator : null

		constructor : (title, dvdMediator) ->
			@setTitle( if title instanceof DvdTitle then title.getTitle() else title)
			@resetTitle()
			@dvdMediator = dvdMediator
			@dvdMediator.setLowercase(@)

		resetTitle : (title) ->
			if title
				@setTitle(title)
			@setLowercaseTitle(@getTitle().toLowerCase())

		setSuperTitleLowercase : ->
			@setTitle(@getLowercaseTitle())
			@dvdMediator.changeTitle(@)

		getLowercaseTitle : ->
			@LowercaseTitle

		setLowercaseTitle : (aLowercaseTitle)->
			@LowercaseTitle = aLowercaseTitle
