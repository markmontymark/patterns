<?

require_once 'src/Behavioral/Memento/DvdDetails.php';

class Behavioral_MementoTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$dvdMementoCaretaker;  

		$stars = array("Guy Pearce");
		$dvdDetails = new DvdDetails("Memento", $stars, '1'); 

		$this->assertNotNull($dvdDetails,'dvddetails is not null test');
		$this->assertEquals($dvdDetails->formatDvdDetails(), 'DVD: Memento, starring: Guy Pearce, encoding region: 1', 'first formatDvdDetails call');

		$dvdMementoCaretaker = $dvdDetails->createDvdMemento();
		//$this->assertEquals( var_export($dvdMementoCaretaker,true), '','var export the memento');
		$this->assertNotNull($dvdMementoCaretaker, 'test we could create a memento');

		$dvdDetails->addStar("edskdzkvdfb");  
		#//oops - Cappuccino on the keyboard!
		$this->assertEquals($dvdDetails->formatDvdDetails(),'DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1','Add weird named star test');


		$dvdDetails->setDvdMemento($dvdMementoCaretaker);
		#//back off changes
		$this->assertEquals($dvdDetails->formatDvdDetails(),'DVD: Memento, starring: Guy Pearce, encoding region: 1','Revert dvddetails back test');

	}
}
