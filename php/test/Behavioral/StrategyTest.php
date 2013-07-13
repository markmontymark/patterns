<?

require_once 'src/Behavioral/Strategy/DvdNameContext.php';

class Behavioral_StrategyTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$allCapContext = new DvdNameContext('C');
		$theEndContext = new DvdNameContext('E');
		$spacesContext = new DvdNameContext('S');

		$dvdNames = array(
			"Jay and Silent Bob Strike Back",
			"The Fast and the Furious",
			"The Others"
		);

		$replaceChar = '*';

		$this->assertEquals( implode(',',$allCapContext->formatDvdNames($dvdNames)) ,'JAY AND SILENT BOB STRIKE BACK,THE FAST AND THE FURIOUS,THE OTHERS', 'All caps context');
		$this->assertEquals( implode(',',$theEndContext->formatDvdNames($dvdNames)), 'Jay and Silent Bob Strike Back,Fast and the Furious, The,Others, The', ' The End context');
		$this->assertEquals( implode(',',$spacesContext->formatDvdNames($dvdNames, $replaceChar)),'Jay*and*Silent*Bob*Strike*Back,The*Fast*and*the*Furious,The*Others','Space context');

	}
}
