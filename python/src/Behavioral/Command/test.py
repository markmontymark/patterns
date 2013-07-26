from DvdName import DvdName
from DvdCommandNameStarsOn import  DvdCommandNameStarsOn
from DvdCommandNameStarsOff import  DvdCommandNameStarsOff

import unittest

class TestBehavioralCommand( unittest.TestCase):

	def test(self):
		jayAndBob = DvdName('Jay and Silent Bob Strike Back')
		spongeBob = DvdName('Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')

		bobStarsOn = DvdCommandNameStarsOn(jayAndBob)
		bobStarsOff = DvdCommandNameStarsOff(jayAndBob)
		spongeStarsOn = DvdCommandNameStarsOn(spongeBob)
		spongeStarsOff = DvdCommandNameStarsOff(spongeBob)

		#it 'as first instantiated',->
		self.assertEqual(jayAndBob.toString(), 'DVD: Jay and Silent Bob Strike Back')
		self.assertEqual(spongeBob.toString(), 'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')
		self.assertEqual(JSON.stringify(spongeStarsOn), '{"dvdName":{"titleName":"Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"}}')


		#it 'stars on',->
		bobStarsOn.execute()
		spongeStarsOn.execute()
		self.assertEqual(jayAndBob.toString(), 'DVD: Jay*and Silent Bob Strike Back')
		self.assertEqual(spongeBob.toString(),'DVD: Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies')


		#it 'sponge stars off',->
		spongeStarsOff.execute()
		self.assertEqual(jayAndBob.toString(), 'DVD: Jay*and Silent Bob Strike Back')
		self.assertEqual(spongeBob.toString(), 'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')


