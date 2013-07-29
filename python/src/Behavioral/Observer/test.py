from DvdReleaseByCategory import DvdReleaseByCategory
from DvdSubscriber import  DvdSubscriber
from DvdRelease import  DvdRelease

import unittest

class TestBehavioralObserver(unittest.TestCase):
	def test(self):
		btvs = DvdReleaseByCategory("Buffy the Vampire Slayer")
		simpsons = DvdReleaseByCategory("The Simpsons")
		sopranos = DvdReleaseByCategory("The Sopranos")
		xfiles = DvdReleaseByCategory("The X-Files")

		jsopra = DvdSubscriber("Junior Soprano")
		msimps = DvdSubscriber("Maggie Simpson")
		rgiles = DvdSubscriber("Rupert Giles")
		smulde = DvdSubscriber("Samantha Mulder")
		wrosen = DvdSubscriber("Willow Rosenberg")

		btvsS2 = DvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11)
		simpS2 = DvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7,  9)
		soprS2 = DvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6)
		xfilS5 = DvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4,  1)


		#it 'create a dvdreleasebycategory obj',->
		self.assertEqual( str(btvs) , '"categoryName":"Buffy the Vampire Slayer","subscriberList":,"dvdReleaseList":')

		#it 'create a dvdsubscriber obj',->
		self.assertEqual( str(jsopra) , '"subscriberName":"Junior Soprano"')

		#it 'add dvdsubscribers',->
		btvs.addSubscriber(rgiles)
		self.assertEqual( str(btvs), '"categoryName":"Buffy the Vampire Slayer","subscriberList":"subscriberName":"Rupert Giles","dvdReleaseList":');

		btvs.addSubscriber(wrosen)
		simpsons.addSubscriber(msimps)
		sopranos.addSubscriber(jsopra)
		xfiles.addSubscriber(smulde)
		xfiles.addSubscriber(wrosen)


		#it 'create a dvdrelease obj',->
		self.assertEqual(str(btvsS2) , '"serialNumber":"DVDFOXBTVSS20","dvdName":"Buffy The Vampire Slayer Season 2","dvdReleaseYear":2002,"dvdReleaseMonth":6,"dvdReleaseDay":11')

		#it 'observe new dvdrelease',->
		self.assertEqual('{0}'.format(str(btvs.newDvdRelease(btvsS2))) , """Hello Rupert Giles , subscriber to the  Buffy the Vampire Slayer DVD release list.
The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.,Hello Willow Rosenberg , subscriber to the  Buffy the Vampire Slayer DVD release list.
The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.""")
		simpsons.newDvdRelease(simpS2)
		sopranos.newDvdRelease(soprS2)
		xfiles.newDvdRelease(xfilS5)

		#it 'remove a subscriber',->
		self.assertEqual(xfiles.removeSubscriber(wrosen)).toBeTruthy()

		#it 'update a release',->
		self.assertEqual(xfilS5.updateDvdReleaseDate(2002, 5, 14).toString(), '14')

		#it 'update a dvd',->
		self.assertEqual(xfiles.updateDvd(xfilS5).toString() , """Hello Samantha Mulder, subscriber to the The X-Files DVD release list.
The following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002,Hello Willow Rosenberg, subscriber to the The X-Files DVD release list.
The following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002""")
