from DvdInterpreterContext import DvdInterpreterContext
from TitleAndActor import TitleAndActor
from DvdInterpreterClient import DvdInterpreterClient

import unittest


class TestBehavioralInterpreter(unittest.TestCase):

	def test(self):
			dvdInterpreterContext = DvdInterpreterContext()
			dvdInterpreterContext.addTitle("Caddy Shack")
			dvdInterpreterContext.addTitle("Training Day")
			dvdInterpreterContext.addTitle("Hamlet")

			dvdInterpreterContext.addActor("Ethan Hawke")
			dvdInterpreterContext.addActor("Denzel Washington")

			dvdInterpreterContext.addTitleAndActor( TitleAndActor("Hamlet", "Ethan Hawke"))
			dvdInterpreterContext.addTitleAndActor( TitleAndActor("Training Day", "Ethan Hawke"))
			dvdInterpreterContext.addTitleAndActor( TitleAndActor("Caddy Shack", "Ethan Hawke"))
			dvdInterpreterContext.addTitleAndActor( TitleAndActor("Training Day", "Denzel Washington"))

			dvdInterpreterClient = DvdInterpreterClient(dvdInterpreterContext)

			self.assertEqual( "interpreting show actor: " + dvdInterpreterClient.interpret( "show actor"), 'interpreting show actor: [\'Query Result: \', \'Ethan Hawke, Denzel Washington\']')
			self.assertEqual( "interpreting show actor for title : " + dvdInterpreterClient.interpret( "show actor for title "), 'interpreting show actor for title : [\'Query Result: \', \'\']')
			self.assertEqual( "interpreting show title: " + dvdInterpreterClient.interpret( "show title"), 'interpreting show title: [\'Query Result: \', \'Caddy Shack, Training Day, Hamlet\']')
			self.assertEqual( "interpreting show title for actor : " + dvdInterpreterClient.interpret( "show title for actor "), 'interpreting show title for actor : [\'Query Result: \', \'\']')

			self.assertEqual( "interpreting show actor for title <Training Day>: " + 
				dvdInterpreterClient.interpret( "show actor for title <Training Day>"), 
				'interpreting show actor for title <Training Day>: [\'Query Result: \', \'Ethan Hawke, Denzel Washington\']')

			self.assertEqual( "interpreting show title for actor <Ethan Hawke>: " + 
				dvdInterpreterClient.interpret( "show title for actor <Ethan Hawke>"), 
				'interpreting show title for actor <Ethan Hawke>: [\'Query Result: \', \'Hamlet, Training Day, Caddy Shack\']')

