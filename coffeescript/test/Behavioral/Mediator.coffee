

define ['Behavioral/Mediator/DvdMediator',
'Behavioral/Mediator/DvdLowercaseTitle',
'Behavioral/Mediator/DvdUpcaseTitle'
],(
DvdMediator,
DvdLowercaseTitle,
DvdUpcaseTitle
) ->

	'use strict'

	describe 'Test Behavioral Mediator', ->

		dvdMediator = new DvdMediator()
		dvdLower = new DvdLowercaseTitle("Mulholland Dr.", dvdMediator)
		dvdUp = new DvdUpcaseTitle(dvdLower, dvdMediator)

		it 'before using super',->
			expect("Lowercase LC title :" + dvdLower.getLowercaseTitle()).toEqual( 'Lowercase LC title :mulholland dr.')
			expect("Lowercase super title :" + dvdLower.getTitle()).toEqual( 'Lowercase super title :Mulholland Dr.')
			expect("Upcase UC title :" + dvdUp.getUpcaseTitle()).toEqual( 'Upcase UC title :MULHOLLAND DR.')
			expect("Upcase super title :" + dvdUp.getTitle()).toEqual( 'Upcase super title :Mulholland Dr.')

		it 'after using super',->
			dvdLower.setSuperTitleLowercase()
			expect("Lowercase LC title :" + dvdLower.getLowercaseTitle()).toEqual( 'Lowercase LC title :mulholland dr.')
			expect("Lowercase super title :" + dvdLower.getTitle()).toEqual( 'Lowercase super title :mulholland dr.')
			expect("Upcase UC title :" + dvdUp.getUpcaseTitle()).toEqual( 'Upcase UC title :MULHOLLAND DR.')
			expect("Upcase super title :" + dvdUp.getTitle()).toEqual( 'Upcase super title :mulholland dr.')



