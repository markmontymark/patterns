define ['Behavioral/Command/DvdName',
'Behavioral/Command/DvdCommandNameStarsOn',
'Behavioral/Command/DvdCommandNameStarsOff'
],(
DvdName,
DvdCommandNameStarsOn,
DvdCommandNameStarsOff
) ->

	'use strict'

	describe 'Test Behavioral Command',->

		jayAndBob = new DvdName('Jay and Silent Bob Strike Back')
		spongeBob = new DvdName('Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')

		bobStarsOn = new DvdCommandNameStarsOn(jayAndBob)
		bobStarsOff = new DvdCommandNameStarsOff(jayAndBob)
		spongeStarsOn = new DvdCommandNameStarsOn(spongeBob)
		spongeStarsOff = new DvdCommandNameStarsOff(spongeBob)

		it 'as first instantiated',->
			expect(jayAndBob.toString()).toEqual( 'DVD: Jay and Silent Bob Strike Back')
			expect(spongeBob.toString()).toEqual( 'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')
			expect(JSON.stringify(spongeStarsOn)).toEqual( '{"dvdName":{"titleName":"Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"}}')


		it 'stars on',->
			bobStarsOn.execute()
			spongeStarsOn.execute()
			expect(jayAndBob.toString()).toEqual( 'DVD: Jay*and Silent Bob Strike Back')
			expect(spongeBob.toString()).toEqual( 'DVD: Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies')


		it 'sponge stars off',->
			spongeStarsOff.execute()
			expect(jayAndBob.toString()).toEqual( 'DVD: Jay*and Silent Bob Strike Back')
			expect(spongeBob.toString()).toEqual( 'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')


