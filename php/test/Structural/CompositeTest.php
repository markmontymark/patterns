<?

require_once 'src/Structural/Composite/OneTeaBag.php';
require_once 'src/Structural/Composite/TinOfTeaBags.php';

class Structural_CompositeTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$tinOfTeaBags = new TinOfTeaBags("tin of tea bags");
		$this->assertEquals("The tinOfTeaBags has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.",'The tinOfTeaBags has 0 tea bags in it.','first tea bag count');

		$teaBag1 = new OneTeaBag("tea bag 1");
		$this->assertEquals("The teaBag1 has " . $teaBag1->countTeaBags() . " tea bags in it.",'The teaBag1 has 1 tea bags in it.','second tea bag count');

		$teaBag2 = new OneTeaBag("tea bag 2");
		$this->assertEquals("The teaBag2 has " . $teaBag2->countTeaBags() . " tea bags in it.",'The teaBag2 has 1 tea bags in it.','third tea bag count'); 

		$this->assertEquals($tinOfTeaBags->add($teaBag1) ?  "teaBag1 added successfully to tinOfTeaBags" : "teaBag1 not added successfully tinOfTeaBags",'teaBag1 added successfully to tinOfTeaBags','Test putting teaBag1 and teaBag2 in tin, first '); 
		$this->assertEquals( $tinOfTeaBags->add($teaBag2) ?  "teaBag2 added successfully to tinOfTeaBags" : "teaBag2 not added successfully tinOfTeaBags",'teaBag2 added successfully to tinOfTeaBags','Test putting teaBag1 and teaBag2 in tin, second ');
		$this->assertEquals("The tinOfTeaBags now has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.",'The tinOfTeaBags now has 2 tea bags in it.','fourth tea bag count');

		$smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags");
		$this->assertEquals("The smallTinOfTeaBags has " . $smallTinOfTeaBags->countTeaBags() . " tea bags in it.",'The smallTinOfTeaBags has 0 tea bags in it.','fifth tea bag count');
		$teaBag3 = new OneTeaBag("tea bag 3");
		$this->assertEquals("The teaBag3 has " . $teaBag3->countTeaBags() . " tea bags in it.",'The teaBag3 has 1 tea bags in it.','sixth tea bag count');
		$this->assertEquals($smallTinOfTeaBags->add($teaBag3) ?  "teaBag3 added successfully to smallTinOfTeaBags" : "teaBag3 not added successfully to smallTinOfTeaBags",'teaBag3 added successfully to smallTinOfTeaBags', 'Test if teaBag3 added');
		$this->assertEquals("The smallTinOfTeaBags now has " . $smallTinOfTeaBags->countTeaBags() . " tea bags in it.",'The smallTinOfTeaBags now has 1 tea bags in it.','seventh tea bag count');

		$this->assertEquals($tinOfTeaBags->add($smallTinOfTeaBags) ?  "smallTinOfTeaBags added successfully to tinOfTeaBags" : "smallTinOfTeaBags not added successfully to tinOfTeaBags" ,'smallTinOfTeaBags added successfully to tinOfTeaBags', 'Test adding a tin of tea bags into another tin of tea bags'); 
		$this->assertEquals("The tinOfTeaBags now has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.",'The tinOfTeaBags now has 3 tea bags in it.','eighth tea bag count');
		$this->assertEquals($tinOfTeaBags->remove($teaBag2) ?  "teaBag2 successfully removed from tinOfTeaBags" :  "teaBag2 not successfully removed from tinOfTeaBags" ,"teaBag2 successfully removed from tinOfTeaBags", 'Test removing teaBag2 from tin');
		$this->assertEquals("The tinOfTeaBags now has " . $tinOfTeaBags->countTeaBags() . " tea bags in it.",'The tinOfTeaBags now has 2 tea bags in it.','ninth tea bag count');

	}
}

