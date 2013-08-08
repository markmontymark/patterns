
#//TestDvdStrategy- testing the strategy

import re
import unittest
from  Behavioral.Strategy.DvdNameContext import DvdNameContext


class TestStrategy(unittest.TestCase):

	def test(self):
		"""Test Behavioral Strategy"""

		allCapContext = DvdNameContext('C')
		theEndContext = DvdNameContext('E')
		spacesContext = DvdNameContext('S')

		dvdNames = [ "Jay and Silent Bob Strike Back","The Fast and the Furious", "The Others"]

		replaceChar = '*'

		self.assertEqual(''.join(re.split(r'\s+',allCapContext.formatDvdNames(dvdNames))) , ''.join(re.split(r'\s+',"""Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  JAY AND SILENT BOB STRIKE BACK
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  THE FAST AND THE FURIOUS
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  THE OTHERS
==========================""")))

		self.assertEqual(''.join(re.split(r'\s+',theEndContext.formatDvdNames(dvdNames))) , ''.join(re.split(r'\s+',"""Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  Jay and Silent Bob Strike Back
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  Fast and the Furious, The
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  Others, The
==========================""")))

		self.assertEqual(''.join(re.split(r'\s+',spacesContext.formatDvdNames(dvdNames, replaceChar))) , ''.join(re.split(r'\s+',"""Dvd name before formatting: Jay and Silent Bob Strike Back
Dvd name after formatting:  Jay*and*Silent*Bob*Strike*Back
==========================
Dvd name before formatting: The Fast and the Furious
Dvd name after formatting:  The*Fast*and*the*Furious
==========================
Dvd name before formatting: The Others
Dvd name after formatting:  The*Others
==========================""")))

if __name__  ==  '__main__':
	 unittest.main()
