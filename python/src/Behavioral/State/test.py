
from DvdStateContext import DvdStateContext

import unittest

class TestBehavioralState(unittest.TestCase):
	def test(self):
		#it 'Run through the states',->
		stateContext = DvdStateContext()
		self.assertEqual(stateContext.showName('Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies'),  'Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies')
		self.assertEqual(stateContext.showName('Jay and Silent Bob Strike Back'),  'Jay*and*Silent Bob Strike Back')
		self.assertEqual(stateContext.showName('Buffy The Vampire Slayer Season 2'), 'Buffy!The Vampire Slayer Season 2')
		self.assertEqual(stateContext.showName('The Sopranos Season 2'),  'The*Sopranos Season 2')
