from DvdInfo import DvdInfo
from BookInfo import BookInfo
from GameInfo import GameInfo
from TitleLongBlurbVisitor import TitleLongBlurbVisitor
from TitleShortBlurbVisitor import TitleShortBlurbVisitor

import unittest

class TestBehavioralVisitor(unittest.TestCase):

	def test(self):

		bladeRunner = DvdInfo("Blade Runner", "Harrison Ford", '1')
		electricSheep = BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")
		sheepRaider = GameInfo("Sheep Raider")

		#it "Long Blurbs:",->
		titleLongBlurbVisitor = TitleLongBlurbVisitor()
		bladeRunner.accept(titleLongBlurbVisitor)
		self.assertEqual("Testing bladeRunner   " + titleLongBlurbVisitor.getTitleBlurb(),  'Testing bladeRunner   LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1')
		electricSheep.accept(titleLongBlurbVisitor)
		self.assertEqual("Testing electricSheep " + titleLongBlurbVisitor.getTitleBlurb(),  'Testing electricSheep LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick')
		sheepRaider.accept(titleLongBlurbVisitor)
		self.assertEqual("Testing sheepRaider   " + titleLongBlurbVisitor.getTitleBlurb(),  'Testing sheepRaider   LB-Game: Sheep Raider')


		#it "Short Blurbs:",->
		titleShortBlurbVisitor = TitleShortBlurbVisitor()
		bladeRunner.accept(titleShortBlurbVisitor)
		self.assertEqual("Testing bladeRunner   " + titleShortBlurbVisitor.getTitleBlurb(), "Testing bladeRunner   SB-DVD: Blade Runner")
		electricSheep.accept(titleShortBlurbVisitor)
		self.assertEqual("Testing electricSheep " + titleShortBlurbVisitor.getTitleBlurb(), "Testing electricSheep SB-Book: Do Androids Dream of Electric Sheep?")
		sheepRaider.accept(titleShortBlurbVisitor)
		self.assertEqual("Testing sheepRaider   " + titleShortBlurbVisitor.getTitleBlurb(), 'Testing sheepRaider   SB-Game: Sheep Raider')
