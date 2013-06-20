
#//TestDvdStrategy.java - testing the strategy
define ['Behavioral/Strategy/DvdNameContext'
],(
DvdNameContext
) ->

	'use strict'

	describe 'Test Behavioral Strategy',->
		allCapContext = new DvdNameContext('C')
		theEndContext = new DvdNameContext('E')
		spacesContext = new DvdNameContext('S')

		dvdNames = [ "Jay and Silent Bob Strike Back","The Fast and the Furious", "The Others"]

		replaceChar = '*'

		it "Testing formatting with all caps",->
			expect(allCapContext.formatDvdNames(dvdNames)).toEqual("""Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  JAY AND SILENT BOB STRIKE BACK
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  THE FAST AND THE FURIOUS
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  THE OTHERS
==========================""")

		it "Testing formatting with beginning the at end",->
			expect(theEndContext.formatDvdNames(dvdNames)).toEqual("""Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  Jay and Silent Bob Strike Back
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  Fast and the Furious, The
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  Others, The
==========================""")

		it " Testing formatting with all spaces replaced with #{replaceChar}",->
			expect(spacesContext.formatDvdNames(dvdNames, replaceChar)).toEqual("""Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  Jay*and*Silent*Bob*Strike*Back
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  The*Fast*and*the*Furious
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  The*Others
==========================""")

