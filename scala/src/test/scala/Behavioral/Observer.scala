//Observer - testing the observer


package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;


import Behavioral.Observer.*;

public class Observer {

	@Test    
   public void obs() {
		DvdReleaseByCategory btvs = new DvdReleaseByCategory("Buffy the Vampire Slayer");
		DvdReleaseByCategory simpsons = new DvdReleaseByCategory("The Simpsons");  
		DvdReleaseByCategory sopranos = new DvdReleaseByCategory("The Sopranos");
		DvdReleaseByCategory xfiles = new DvdReleaseByCategory("The X-Files");

		DvdSubscriber jsopra = new DvdSubscriber("Junior Soprano");
		DvdSubscriber msimps = new DvdSubscriber("Maggie Simpson");
		DvdSubscriber rgiles = new DvdSubscriber("Rupert Giles");
		DvdSubscriber smulde = new DvdSubscriber("Samantha Mulder");
		DvdSubscriber wrosen = new DvdSubscriber("Willow Rosenberg");

		btvs.addSubscriber(rgiles);
		btvs.addSubscriber(wrosen);  
		simpsons.addSubscriber(msimps);
		sopranos.addSubscriber(jsopra);
		xfiles.addSubscriber(smulde);
		xfiles.addSubscriber(wrosen);

		DvdRelease btvsS2 = new DvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 06, 11);
		DvdRelease simpS2 = new DvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 07,  9);
		DvdRelease soprS2 = new DvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
		DvdRelease xfilS5 = new DvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 04,  1);

		
		org.junit.Assert.assertEquals("New dvd release test 1", 	
			"Hello Rupert Giles, subscriber to the Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.\nHello Willow Rosenberg, subscriber to the Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.",
			btvs.newDvdRelease(btvsS2)
		);
		org.junit.Assert.assertEquals("New dvd release test 2", 	
			"Hello Maggie Simpson, subscriber to the The Simpsons DVD release list.\nThe new Dvd The Simpsons Season 2 will be released on 7/9/2002.",
			simpsons.newDvdRelease(simpS2)
		);
		org.junit.Assert.assertEquals("New dvd release test 3", 	
			"Hello Junior Soprano, subscriber to the The Sopranos DVD release list.\nThe new Dvd The Sopranos Season 2 will be released on 11/6/2001.",
			sopranos.newDvdRelease(soprS2)
		);
		org.junit.Assert.assertEquals("New dvd release test 4", 	
			"Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe new Dvd The X-Files Season 5 will be released on 4/1/2002.\nHello Willow Rosenberg, subscriber to the The X-Files DVD release list.\nThe new Dvd The X-Files Season 5 will be released on 4/1/2002.",
			xfiles.newDvdRelease(xfilS5)
		);

		org.junit.Assert.assertEquals("Remove subscriber test", 	
			true,
			xfiles.removeSubscriber(wrosen)
		);

		xfilS5.updateDvdReleaseDate(2002, 5, 14);

		org.junit.Assert.assertEquals("Update dvd test", 	
			"Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002.",
			xfiles.updateDvd(xfilS5)
		);

	}
}      
