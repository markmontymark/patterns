
define ['Behavioral/State/DvdStateContext'
],(
DvdStateContext
) ->

	'use strict'

	describe 'Test Behavioral State',->
		it 'Run through the states',->
			stateContext = new DvdStateContext()
			expect(stateContext.showName('Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')).toEqual( 'Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies')
			expect(stateContext.showName('Jay and Silent Bob Strike Back')).toEqual( 'Jay*and Silent Bob Strike Back')
			expect(stateContext.showName('Buffy The Vampire Slayer Season 2')).toEqual('Buffy!The Vampire Slayer Season 2')
			expect(stateContext.showName('The Sopranos Season 2')).toEqual( 'The*Sopranos Season 2')


