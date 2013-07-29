from DvdDetails import DvdDetails
from DvdMemento import DvdMemento

import unittest

class TestBehavioralMemento(unittest.TestCase):

	def test(self):

		dvdMementoCaretaker = None
		stars = ["Guy Pearce"]
		dvdDetails = DvdDetails("Memento", stars, '1')
		dvdMementoCaretaker = dvdDetails.createDvdMemento()

		#it "as first instantiated",->
		self.assertEqual(dvdDetails.formatDvdDetails(), 'DVD: Memento starring: Guy Pearce encoding region: 1')

		#it 'oops - Cappuccino on the keyboard!',->
		dvdDetails.addStar("edskdzkvdfb")
		self.assertEqual(dvdDetails.formatDvdDetails(), 'DVD: Memento starring: Guy Pearce, edskdzkvdfb encoding region: 1');

		#it 'back off changes',->
		dvdDetails.setDvdMemento(dvdMementoCaretaker)
		self.assertEqual(dvdDetails.formatDvdDetails(), 'DVD: Memento starring: Guy Pearce encoding region: 1')
