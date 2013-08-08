

from DvdTitleInfo import DvdTitleInfo
from BookTitleInfo import BookTitleInfo
from GameTitleInfo import GameTitleInfo

import unittest

class TestBehavioralTemplateMethod(unittest.TestCase):
	def test(self):
		#it 'Can create 3 title infos',->
		bladeRunner = DvdTitleInfo("Blade Runner", "Harrison Ford", '1')
		electricSheep = BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")
		sheepRaider = GameTitleInfo("Sheep Raider")
		self.assertEqual("Testing bladeRunner   " +   bladeRunner.ProcessTitleInfo(),  'Testing bladeRunner   DVD: Blade Runner, starring Harrison Ford , encoding region: 1')
		self.assertEqual("Testing electricSheep " + electricSheep.ProcessTitleInfo(),  'Testing electricSheep Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ')
		self.assertEqual("Testing sheepRaider   " +   sheepRaider.ProcessTitleInfo(),  'Testing sheepRaider   Game: Sheep Raider ')

