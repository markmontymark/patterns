<?

require_once 'src/Behavioral/Observer/DvdRelease.php';
require_once 'src/Behavioral/Observer/DvdSubscriber.php';
require_once 'src/Behavioral/Observer/DvdReleaseByCategory.php';

class Behavioral_ObserverTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$btvs = new DvdReleaseByCategory("Buffy the Vampire Slayer");
		$simpsons = new DvdReleaseByCategory("The Simpsons");  
		$sopranos = new DvdReleaseByCategory("The Sopranos");
		$xfiles = new DvdReleaseByCategory("The X-Files");

		$this->assertNotNull( $btvs);
		$this->assertNotNull( $simpsons);
		$this->assertNotNull( $sopranos);
		$this->assertNotNull( $xfiles);

		$jsopra = new DvdSubscriber("Junior Soprano");
		$msimps = new DvdSubscriber("Maggie Simpson");
		$rgiles = new DvdSubscriber("Rupert Giles");
		$smulde = new DvdSubscriber("Samantha Mulder");
		$wrosen = new DvdSubscriber("Willow Rosenberg");


		$this->assertNotNull( $jsopra );
		$this->assertNotNull( $msimps );
		$this->assertNotNull( $rgiles );
		$this->assertNotNull( $smulde );
		$this->assertNotNull( $wrosen );

		$btvs->addSubscriber($rgiles);
		$btvs->addSubscriber($wrosen);  
		$simpsons->addSubscriber($msimps);
		$sopranos->addSubscriber($jsopra);
		$xfiles->addSubscriber($smulde);
		$xfiles->addSubscriber($wrosen);

		$btvsS2 = new DvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11);
		$simpS2 = new DvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7,  9);
		$soprS2 = new DvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6);
		$xfilS5 = new DvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4,  1);

		$this->assertEquals( implode(',',$btvs->newDvdRelease($btvsS2)), 'Hello Rupert Giles, subscriber to the Buffy the Vampire Slayer DVD release list.  The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.,Hello Willow Rosenberg, subscriber to the Buffy the Vampire Slayer DVD release list.  The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.', 'btvs new dvd release test');
		$this->assertEquals( implode(',',$simpsons->newDvdRelease($simpS2)), 'Hello Maggie Simpson, subscriber to the The Simpsons DVD release list.  The new Dvd The Simpsons Season 2 will be released on 7/9/2002.', 'simpsons new dvd release test');
		$this->assertEquals( implode(',',$sopranos->newDvdRelease($soprS2)),  'Hello Junior Soprano, subscriber to the The Sopranos DVD release list.  The new Dvd The Sopranos Season 2 will be released on 11/6/2001.','sopranos new dvd release test');
		$this->assertEquals( implode(',',$xfiles->newDvdRelease($xfilS5)),  'Hello Samantha Mulder, subscriber to the The X-Files DVD release list.  The new Dvd The X-Files Season 5 will be released on 4/1/2002.,Hello Willow Rosenberg, subscriber to the The X-Files DVD release list.  The new Dvd The X-Files Season 5 will be released on 4/1/2002.','xfiles new dvd release test');

		$xfiles->removeSubscriber($wrosen);
		$xfilS5->updateDvdReleaseDate(2002, 5, 14);

		$this->assertEquals( implode(',',$xfiles->updateDvd($xfilS5)), 'Hello Samantha Mulder, subscriber to the The X-Files DVD release list.  The following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002.', 'xfiles update dvd test');

	}
}
