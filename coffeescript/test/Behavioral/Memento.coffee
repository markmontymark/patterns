define ['Behavioral/Memento/DvdDetails',
'Behavioral/Memento/DvdMemento'
],(
DvdDetails,
DvdMemento
) ->

	'use strict'

	describe 'Test Behavioral Memento',->

		dvdMementoCaretaker = null
		stars = ["Guy Pearce"]
		dvdDetails = new DvdDetails("Memento", stars, '1')
		dvdMementoCaretaker = dvdDetails.createDvdMemento()

		it "as first instantiated",->
			expect(dvdDetails.formatDvdDetails()).toEqual('DVD: Memento starring: Guy Pearce encoding region: 1')

		it 'oops - Cappuccino on the keyboard!',->
			dvdDetails.addStar("edskdzkvdfb")
			expect(dvdDetails.formatDvdDetails()).toEqual('DVD: Memento starring: Guy Pearce, edskdzkvdfb encoding region: 1');

		it 'back off changes',->
			dvdDetails.setDvdMemento(dvdMementoCaretaker)
			expect(dvdDetails.formatDvdDetails()).toEqual('DVD: Memento starring: Guy Pearce encoding region: 1')
