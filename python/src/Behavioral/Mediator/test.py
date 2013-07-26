

from DvdMediator import DvdMediator
from DvdLowercaseTitle import DvdLowercaseTitle
from DvdUpcaseTitle import DvdUpcaseTitle


class TestBehavioralMediator( unittest.TestCase ):
   def test(self):

		dvdMediator = DvdMediator()
		dvdLower = DvdLowercaseTitle("Mulholland Dr.", dvdMediator)
		dvdUp = DvdUpcaseTitle(dvdLower, dvdMediator)

		#it 'before using super',->
		self.assertEqual("Lowercase LC title :" + dvdLower.getLowercaseTitle(),  'Lowercase LC title :mulholland dr.')
		self.assertEqual("Lowercase super title :" + dvdLower.getTitle(),  'Lowercase super title :Mulholland Dr.')
		self.assertEqual("Upcase UC title :" + dvdUp.getUpcaseTitle(),  'Upcase UC title :MULHOLLAND DR.')
		self.assertEqual("Upcase super title :" + dvdUp.getTitle(),  'Upcase super title :Mulholland Dr.')

		#it 'after using super',->
		dvdLower.setSuperTitleLowercase()
		self.assertEqual("Lowercase LC title :" + dvdLower.getLowercaseTitle(),  'Lowercase LC title :mulholland dr.')
		self.assertEqual("Lowercase super title :" + dvdLower.getTitle(),  'Lowercase super title :mulholland dr.')
		self.assertEqual("Upcase UC title :" + dvdUp.getUpcaseTitle(),  'Upcase UC title :MULHOLLAND DR.')
		self.assertEqual("Upcase super title :" + dvdUp.getTitle(),  'Upcase super title :mulholland dr.')



