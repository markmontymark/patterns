//Observer.java - testing the observer


package test.Behavioral;


import Behavioral.Observer.*;
import tap.*;



class Observer {
    
   public static void main(String[] args) {
		DvdReleaseByCategory btvs = new DvdReleaseByCategory("Buffy the Vampire Slayer");
		DvdReleaseByCategory simpsons = new DvdReleaseByCategory("The Simpsons");  
		DvdReleaseByCategory sopranos = new DvdReleaseByCategory("The Sopranos");
		DvdReleaseByCategory xfiles = new DvdReleaseByCategory("The X-Files");

		final DvdSubscriber jsopra = new DvdSubscriber("Junior Soprano");
		final DvdSubscriber msimps = new DvdSubscriber("Maggie Simpson");
		final DvdSubscriber rgiles = new DvdSubscriber("Rupert Giles");
		final DvdSubscriber smulde = new DvdSubscriber("Samantha Mulder");
		final DvdSubscriber wrosen = new DvdSubscriber("Willow Rosenberg");

		btvs.addSubscriber(rgiles);
		btvs.addSubscriber(wrosen);  
		simpsons.addSubscriber(msimps);
		sopranos.addSubscriber(jsopra);
		xfiles.addSubscriber(smulde);
		xfiles.addSubscriber(wrosen);

		final DvdRelease btvsS2 = new DvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 06, 11);
		final DvdRelease simpS2 = new DvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 07,  9);
		final DvdRelease soprS2 = new DvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
		final DvdRelease xfilS5 = new DvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 04,  1);

		Tapper tap = new Tapper();
		tap.test("New dvd release test 1", new TestCase(){public void test(){	
			assert btvs.newDvdRelease(btvsS2).equals("bork");
		}});
		tap.test("New dvd release test 2", new TestCase(){public void test(){	
			assert simpsons.newDvdRelease(simpS2);
		}});
		tap.test("New dvd release test 3", new TestCase(){public void test(){	
			assert sopranos.newDvdRelease(soprS2);
		}});
		tap.test("New dvd release test 4", new TestCase(){public void test(){	
			assert xfiles.newDvdRelease(xfilS5);
		}});

		tap.test("Remove subscriber test", new TestCase(){public void test(){	
			assert xfiles.removeSubscriber(wrosen) == true;
		}});

		xfilS5.updateDvdReleaseDate(2002, 5, 14);

		tap.test("Update dvd test", new TestCase(){public void test(){	
			assert xfiles.updateDvd(xfilS5).equals("bork");
		}});
		tap.done();
	}
}      
